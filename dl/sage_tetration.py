#!/usr/bin/env sage
# -*- mode: python -*-
from sage import all
from sage.all import *
from sage.plot.complex_plot import complex_to_rgb
from sage.symbolic.function import SymbolicFunction

# superexp coefficient memoization
SUPEREXP_CACHE = {}

# superlog coefficient memoization
SUPERLOG_CACHE = {} 

# number of terms in the power series
ORDER = 65

# number of bits in floating-point numbers 
PREC = 53

# maximum recursion depth
MAXITER = 100

# default coefficient ring
RING = SR

# Power series ring over x
POLYRING = PowerSeriesRing(RING, 'x')

def series_power(k, j):
    if j == 0:
        return 1
    if k == 0:
        return 0
    return k**j


def float16_iter8(): # s2e5
    yield "-inf"
    # negative normalized
    for exp in range(15, -15, -1):
        for man in range(3, -1, -1):
            man *= 4
            yield "-0x1.{:0=01x}p{}".format(man, exp)
    # negative denormalized
    for man in range(3, 0, -1):
        man *= 4
        yield "-0x0.{:0=01x}p-14".format(man)
    # zeros
    yield "-0x0.0p+0"
    yield "0x0.0p+0"
    # positive denormalized
    for man in range(1, 4):
        man *= 4
        yield "0x0.{:0=01x}p-14".format(man)
    # positive normalized
    for exp in range(-14, 16):
        for man in range(0, 4):
            man *= 4
            yield "0x1.{:0=01x}p{}".format(man, exp)
    yield "inf"

def float16_iter(): # s10e5
    yield "-inf"
    # negative normalized
    for exp in range(15, -15, -1):
        for man in range(0x3FF, -1, -1):
            man *= 4
            yield "-0x1.{:0=03x}p{}".format(man, exp)
    # negative denormalized
    for man in range(0x3FF, 0, -1):
        man *= 4
        yield "-0x0.{:0=03x}p-14".format(man)
    # zeros
    yield "-0x0.0p+0"
    yield "0x0.0p+0"
    # positive denormalized
    for man in range(1, 0x400):
        man *= 4
        yield "0x0.{:0=03x}p-14".format(man)
    # positive normalized
    for exp in range(-14, 16):
        for man in range(0, 0x400):
            man *= 4
            yield "0x1.{:0=03x}p{}".format(man, exp)
    yield "inf"
    
def float16_complex_graph(f):
    from PIL import Image, ImageColor
    xmax, ymax = 250, 250
    im = Image.new("RGB", (xmax, ymax))
    for xoff, xrep in enumerate(float16_iter8()):
        for yoff, yrep in enumerate(float16_iter8()):
            x = float.fromhex(xrep)
            y = float.fromhex(yrep)

            # evaluate step
            try:
                xc = x + y*I
                zc = f(xc)
            except Exception as err:
                zc = float('nan') + I*float('nan')
                
            # color map step
            try:
                color = complex_to_rgb([[zc]]).tolist()[0][0]
                color = tuple([int(255) if math.isnan(c) or math.isinf(c) else int(255.0*c) for c in color])
            except Exception as err:
                color = (255, 255, 255)

            im.putpixel((xoff, ymax - 1 - yoff), color)
    return im

def fixed_iter(x_range):
    subdiv = 100
    xmin, xmax = x_range
    xdif = abs(xmax - xmin)
    for x in xrange(xmin*subdiv, (xmax*subdiv) + 1):
        yield N(x/subdiv)
    
def fixed_complex_graph(f, x_range, y_range):
    from PIL import Image, ImageColor
    subdiv = 100    
    xmin, xmax = x_range
    ymin, ymax = y_range
    xdif = abs(xmax - xmin)
    ydif = abs(ymax - ymin)
    im = Image.new("RGB", (601, 601))
    for xoff, x in enumerate(fixed_iter(x_range)):
        for yoff, y in enumerate(reversed(fixed_iter(y_range))):
            
            # evaluate step
            try:
                xc = x + y*I
                zc = N(f(N(xc)))
            except Exception as err:
                zc = float('nan') + I*float('nan')
            
            # color map step
            try:
                color = complex_to_rgb([[zc]]).tolist()[0][0]
                color = tuple([int(255) if math.isnan(c) or math.isinf(c) else int(255.0*c) for c in color])
            except Exception as err:
                color = (255, 255, 255)

            im.putpixel((xoff, yoff), color)
    return im

# a better simplify
def canonicalize(c):
    if hasattr(c, 'canonicalize_radical'):
        c = c.canonicalize_radical()
    return c

# a better power series simplify
def simplify_series(ser):
    return ser
    #for ck, coeff in enumerate(ser.coefficients()):
    #    ser._unsafe_mutate(ck, canonicalize(coeff))
    #return ser

# the Carleman matrix
def carleman_matrix(expr, x_x0, order=ORDER, ring=RING):
    x, x0 = x_x0
    order = int(order)
    return matrix([[ring(diff(expr**j, x, k).subs(**{(str(x)): x0})/factorial(k) -
                         kronecker_delta(j, k))
                    for k in range(0, order + 1)]
                    for j in range(0, order + 1)])

# the Abel matrix
def abel_matrix(expr, x_x0, order=ORDER, ring=RING):
    x, x0 = x_x0
    order = int(order)
    m = transpose(carleman_matrix(expr, x_x0, order=order, ring=ring))
    return matrix([[m[j][k]
                    for k in range(1, order + 1)]
                    for j in range(0, order)])

# variant of the Abel matrix
def superlog_matrix(log_base, order=ORDER, ring=RING):
    order = int(order)
    def elem(j, k):
        j = Integer(j)
        k = Integer(k)
        return ((k**j)*(log_base**j)/factorial(j) -
                kronecker_delta(j, k))
    return matrix([[ring(elem(j, k))
                    for k in range(1, order + 1)]
                    for j in range(0, order)])

# power series about z=0
def superlog_series(log_base, z, order=ORDER, ring=RING, polyring=POLYRING, cache=SUPERLOG_CACHE):
    order = int(order)
    try:
        key_base = float(log_base)
    except:
        key_base = str(log_base)

    coeff = None
    if not cache:
        cache = {}
    if key_base not in cache:
        cache[key_base] = {}
    if order not in cache[key_base]:
        m = superlog_matrix(log_base=log_base, order=order, ring=ring)
        #cache[key_base][order] = map(canonicalize, m.inverse().column(0))
        cache[key_base][order] = m.inverse().column(0)
    coeff = cache[key_base][order]
    
    # N-ary summation
    ser = sum([polyring(c)*polyring(z**(i+1)) for i, c in enumerate(coeff)]) - 1
    try:
        ser += z.O(order + 1)
    except:
        pass
    return ser












class Function_knoebel_h(SymbolicFunction):
    """
    knoebel_h(z) == z^^infinity
    """
    
    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "knoebel_h", nargs=2,
                                  conversions=dict(mathematica='KnoebelH'))
        
    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 2:
            return SymbolicFunction.__call__(self, args[0], args[1], **kwds)
        elif len(args) == 1:
            return SymbolicFunction.__call__(self, 0, args[0], **kwds)
        else:
            raise TypeError("knoebel_h takes either one or two arguments.")

    def _eval_(self, branch, z):
        """
        """
        if branch == 0:
            if z == exp(-e): 
                return 1/e
            elif QQ(1)/z == 10000000000:
                return QQ(1)/10
            elif QQ(1)/z == 387420489:
                return QQ(1)/9
            elif QQ(1)/z == 16777216:
                return QQ(1)/8
            elif QQ(1)/z == 823543:
                return QQ(1)/7
            elif QQ(1)/z == 46656:
                return QQ(1)/6
            elif QQ(1)/z == 3125:
                return QQ(1)/5
            elif QQ(1)/z == 256:
                return QQ(1)/4
            elif QQ(1)/z == 27:
                return QQ(1)/3
            elif QQ(1)/z == 4:
                return QQ(1)/2
            elif z == 1: 
                return 1
            elif z == sqrt(2): 
                return 2
            elif z == exp(1/e): 
                return e
        elif branch == -1:
            if z == sqrt(2): 
                return 4
        return None

    def _evalf_(self, branch, z, parent=None, algorithm=None):
        """
        """
        return -lambert_w(branch, -log(z))/log(z)

    def _derivative_(self, branch, z, diff_param=None):
        return -knoebel_h(branch, z)**2/((knoebel_h(branch, z)*log(z) - 1)*z)
    
    def _series_(self, branch, var, at=1, order=5):
        if at == 0:
            return self.exp_series(var, order=order)
        elif at == 1:
            return self.at1_series(var, order=order)
        if at != 1:
            raise ValueError("selfroot_series is only defined at=1")
        
    def exp_series(self, var, order=5, ring=QQ):
        ser = sum(ring(self.exp_series_coeff(k))*var**k/factorial(k) 
                  for k in range(order + 1))
        try:
            ser = ser.O(order + 1)
        except:
            pass
        return ser
    
    def at1_series(self, var, order=5, ring=QQ):
        ser = sum(ring(self.at1_series_coeff(k))*var**k/factorial(k) 
                  for k in range(order + 1))
        try:
            ser = ser.O(order + 1)
        except:
            pass
        return ser
    
    @staticmethod
    def exp_series_coeff(k, ring=QQ):
        return ring(k + 1)**(k - 1)

    @staticmethod
    def at1_series_coeff(k, ring=QQ):
        return sum([ring(-1)**(k - j)*ring(stirling_number1(k, j))*ring(j + 1)**(j - 1)
                    for j in range(k + 1)])

    def _print_(self, branch, z):
        if branch == 0:
            return "knoebel_h(%s)" % z
        else:
            return "knoebel_h(%s, %s)" % (branch, z)
        
    def _print_latex_(self, branch, z):
        if branch == 0:
            return r"\operatorname{H_0}(%s)" % z
        else:
            return r"\operatorname{H_{%s}}(%s)" % (branch, z)

knoebel_h = Function_knoebel_h()
                               
class Function_selfroot(SymbolicFunction):
    """
    selfroot(x) == x^(1/x)
    """
    
    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "selfroot", nargs=1,
                conversions=dict(mathematica='SelfRoot'))

    def _eval_(self, x):
        """
        """
        if x == 0:
            return 0
        elif x == 1:
            return 1
        return x**(1/x)

    def _evalf_(self, x, parent=None, algorithm=None):
        """
        """
        return x**(1/x)

    def _derivative_(self, x, diff_param=None):
        return x**(1/x)*(1/x**2 - log(x)/x**2)
    
    def _series_(self, var, at=1, order=5):
        if at == 0:
            return self._exp_series_(var=var, order=order)
        elif at == 1:
            return self._at1_series_(var=var, order=order)
        if at != 1:
            raise ValueError("selfroot_series is only defined at=1")
    
    def _exp_series_(self, var, order=5):
        ser = sum(self._exp_series_coeff(k)*var**k/factorial(k) 
                  for k in range(order + 1))
        try:
            ser += z.O(order + 1)
        except:
            pass
        return ser

    def _at1_series_(self, var, order=5):
        ser = sum(self._at1_series_coeff(k)*var**k/factorial(k) 
                  for k in range(order + 1)).O(order + 1)
        try:
            ser += z.O(order + 1)
        except:
            pass
        return ser
    
    @staticmethod
    def _exp_series_coeff(k):
        return sum([binomial(k, j)*series_power(-j, k - j) 
                    for j in range(k + 1)])

    @staticmethod
    def _at1_series_coeff(k):
        return sum([sum([(-1)**(k - j)*stirling_number1(k, j)*binomial(j, i)*series_power(-i, j - i) 
                         for i in range(j + 1)])
                    for j in range(k + 1)])

selfroot = Function_selfroot()
