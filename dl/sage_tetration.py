#!/usr/bin/env sage
# -*- mode: python -*-
from sage import all
from sage.all import *
from sage.symbolic.function import SymbolicFunction
import logging

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
    from sage.plot.complex_plot import complex_to_rgb
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
    from sage.plot.complex_plot import complex_to_rgb
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

def hexparser(s):
    try:
        x = float.fromhex(s.strip())
    except Exception as err:
        #logging.error("%s %s" % (s, repr(err)), exc_info=True)
        return 0
    return x

def complexcombiner(re, im):
    return re + im*I

def load1d(path, ring=RR, parser=hexparser):
    with open(path) as fp:
        lines = fp.readlines()
    return map(lambda cell: ring(parser(cell)), lines)

def default_filterer(row):
    return row != None

def load2d(path, ring=CC, parser=hexparser, combiner=complexcombiner, filterer=default_filterer, columns=2):
    with open(path) as fp:
        lines = fp.readlines()
    def parse_line(row):
        if row.startswith('#'):
            return None
        if columns - row.count(',') != 1:
            return None
        row = map(lambda cell: ring(parser(cell)), row.split(','))
        try:
            row = combiner(*row)
        except Exception as err:
            logging.error("%s %s %s " % (row, repr(err)), exc_info=True)
            return None
        return row
    return filter(filterer, map(parse_line, lines))

def sum_ogf_series(z, ogf_coefficients=None, ring=None):
    ser = sum([z**k*ring(c) for k, c in enumerate(ogf_coefficients)])
    try:
        ser = ser.O(order + 1)
    except:
        pass
    return ser

def sum_egf_series(z, egf_coefficients=None, ring=None):
    ser = sum([z**k*ring(c)/ring(factorial(k)) for k, c in enumerate(egf_coefficients)])
    try:
        ser = ser.O(order + 1)
    except:
        pass
    return ser

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
def superlog_series(log_base, z, order=ORDER, ring=None, polyring=None, cache=SUPERLOG_CACHE):
    order = int(order)
    try:
        key_base = float(log_base)
    except:
        key_base = str(log_base)
    if polyring is None:
        polyring = lambda x: x
    if ring is None:
        ring = lambda x: x

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
    return sum_ogf_series(coeff)









class EgfToOgfAdapter(object):
    pass

class TaylorSeriesEntry(object):
    """
    """

    def __init__(self, ogf_coefficients, at, radius, ring=None, order=None):
        """
        """
        object.__init__(self)

        # create fields
        self.ogf = ogf_coefficients
        self.order = order or len(self.ogf)
        self.at = at
        self.radius = radius
        self.ring = ring or RR
        
    def __call__(self, z, ring=None):
        try:
            ring = ring or self.ring
            if isinstance(z, PowerSeries):
                ser = sum([z**k*ring(c) for k, c in enumerate(self.ogf)])
                try:
                    ser = ser.O(order + 1)
                except:
                    pass
                return ser
            else:
                z2 = N(z - self.at)
                if abs(z2) < self.radius:
                    ser = sum([z2**k*ring(c) for k, c in enumerate(self.ogf)])
                    return ser
                else:
                    return None
        except:
            return None

    @staticmethod
    def from_egf(egf_coefficients, at=ZZ(0), radius=ZZ(0), ring=None):

        # convert derivatives to coefficients
        ogf_coefficients = [ring(c)/ring(factorial(k)) for
                            k, c in enumerate(egf_coefficients)]
        # create object
        entry = TaylorSeriesEntry(ogf_coefficients,
                                  at=at, radius=radius, ring=ring)
        return entry

    @property
    def egf(self):
        ring = self.ring
        ogf_coefficients = self.ogf

        # convert coefficients to derivatives
        egf_coefficients = [ring(c)*ring(factorial(k))
                            for k, c in enumerate(ogf_coefficients)]

        return egf_coefficients


class TaylorSeriesDatabase(object):
    """
    """

    def __init__(self):
        """
        """
        object.__init__(self)

        # coefficient cache dictionary
        self._cache = {}

    def __call__(self, z, at=ZZ(0), ring=None):
        return self[at](z, ring=ring)
        
    def __getitem__(self, at=ZZ(0)):
        at_key = '%s,%s' % (float(real(at)).hex(), float(imag(at)).hex())
        return self._cache[at_key]
    
    def from_ogf(self, ogf_coefficients, at=ZZ(0), radius=ZZ(0), ring=None):
        at_key = '%s,%s' % (float(real(at)).hex(), float(imag(at)).hex())
        self._cache[at_key] = TaylorSeriesEntry(ogf_coefficients, at=at, radius=radius, ring=ring)

    def from_egf(self, egf_coefficients, at=ZZ(0), radius=ZZ(0), ring=None):
        at_key = '%s,%s' % (float(real(at)).hex(), float(imag(at)).hex())
        self._cache[at_key] = TaylorSeriesEntry.from_egf(egf_coefficients, at=at, radius=radius, ring=ring)

    def derive(self, f, z, at=ZZ(0), radius=ZZ(0), ring=None):
        pass

    def partial(self, at=ZZ(0)):
        return lambda z: self(z, at=at)

def read_csv_to_database(db):
    pass

def write_csv_from_database(db):
    pass

class Function_iterexp(SymbolicFunction):
    """
    iterexp(branch, base, height, init)
    iterexp(base, height, init)
    iterexp(base, height)

    where

    branch is an integer, base is complex,
    height is an integer, init is complex.
    """

    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "iterexp", nargs=4,
                                  conversions=dict(mathematica='IterExp'))
        
    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 4:
            return SymbolicFunction.__call__(self, *args, **kwds)
        elif len(args) == 3:
            return SymbolicFunction.__call__(self, 0, args[0], args[1], args[2], **kwds)
        elif len(args) == 2:
            return SymbolicFunction.__call__(self, 0, args[0], args[1], 1, **kwds)
        else:
            raise TypeError("iterexp takes 2, 3, or 4 arguments.")

    def _eval_(self, branch, base, height, init=1):
        if base == 0:
            return 0 if height % 2 == 0 else 1
        elif base == 1:
            return 1
        if branch == 0:
            return nest(lambda x: base**x, height, init)
        else:
            return nest(lambda x: base**((2*pi*branch*I/log(base) + 1)*x), height, init)

    def _evalf_(self, branch, base, height, init=1):
        if base == 0:
            return 0 if height % 2 == 0 else 1
        elif base == 1:
            return 1
        if branch == 0:
            return nest(lambda x: base**x, height, init)
        else:
            return nest(lambda x: base**((2*pi*branch*I/log(base) + 1)*x), height, init)

iterexp = Function_iterexp()

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
    selfroot(x) == x^x^(-1)
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
        return x**(QQ(1)/x)

    def _evalf_(self, x, parent=None, algorithm=None):
        """
        """
        return x**(QQ(1)/x)

    def _derivative_(self, x, diff_param=None):
        return x**(QQ(1)/x)*(QQ(1)/x**2 - log(x)/x**2)

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

class Function_superroot_2(SymbolicFunction):
    """
    superroot_2(z)
    """

    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "superroot_2", nargs=2,
                conversions=dict(mathematica='SuperRoot2'))

    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 2:
            return SymbolicFunction.__call__(self, args[0], args[1], **kwds)
        elif len(args) == 1:
            return SymbolicFunction.__call__(self, 0, args[0], **kwds)
        else:
            raise TypeError("superroot_2 takes either one or two arguments.")

    def _eval_(self, branch, z):
        """
        """
        return log(z)/lambert_w(branch, log(z))

    def _evalf_(self, branch, z, parent=None, algorithm=None):
        """
        """
        return log(z)/lambert_w(branch, log(z))

superroot_2 = Function_superroot_2()

class Function_iterexproot_2(SymbolicFunction):
    """
    iterexproot_2(z)
    """

    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "iterexproot_2", nargs=3,
                conversions=dict(mathematica='IterExpRoot2'))

    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 3:
            return SymbolicFunction.__call__(self, args[0], args[1], args[2], **kwds)
        elif len(args) == 2:
            return SymbolicFunction.__call__(self, 0, args[0], args[1], **kwds)
        elif len(args) == 1:
            return SymbolicFunction.__call__(self, 0, args[0], 1, **kwds)
        else:
            raise TypeError("iterexproot_2 takes either one or two arguments.")

    def _eval_(self, branch, z, a):
        """
        """
        return superroot_2._eval_(branch, z**a)**(QQ(1)/a)

    def _evalf_(self, branch, z, a, parent=None, algorithm=None):
        """
        """
        return superroot_2._evalf_(branch, z**a)**(QQ(1)/a)

iterexproot_2 = Function_iterexproot_2()

class Function_iterexproot_3(SymbolicFunction):
    """
    iterexproot_3(z)
    """

    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "iterexproot_3", nargs=3,
                conversions=dict(mathematica='IterExpRoot3'))

        self._bp = 0.731531897477381 + 0.293308661285157*I

        self._cache = {}
        self._cache['0x1.0p+0,0x1.0p+0'] = load2d('superroot_3_at1i1_series.txt', ring=CC)[:int(100)]
        self._cache['0x0.0p+0,0x1.0p+0'] = load2d('superroot_3_at0i1_series.txt', ring=CC)[:int(100)]
        self._cache['0x1.0p-2,0x1.0p-2'] = load2d('superroot_3_at0.25i0.25_series.txt', ring=CC)[:int(100)]
        self._cache['0x1.0p-2,0x0.0p+0'] = load1d('superroot_3_at0.25_series.txt')[:int(100)]
        self._cache['0x1.0p-1,0x0.0p+0'] = load1d('superroot_3_at0.5_series.txt')[:int(100)]
        self._cache['0x1.8p-1,0x0.0p+0'] = load1d('superroot_3_at0.75_series.txt')[:int(100)]
        self._cache['0x1.0p+0,0x0.0p+0'] = load1d('superroot_3_at1_series.txt', ring=QQ, parser=long)
        self._cache['-0x1.0p+1,0x0.0p+0'] = load2d('superroot_3_at-2_series.txt', ring=CC)[:int(100)]
        self._cache['-0x1.0p+2,0x0.0p+0'] = load2d('superroot_3_at-4_series.txt', ring=CC)[:int(100)]
        self._cache['-0x1.0p+3,0x0.0p+0'] = load2d('superroot_3_at-8_series.txt', ring=CC)[:int(100)]
        self._cache['-0x1.0p+4,0x0.0p+0'] = load2d('superroot_3_at-16_series.txt', ring=CC)[:int(100)]
        self._cache['-0x1.0p+5,0x0.0p+0'] = load2d('superroot_3_at-32_series.txt', ring=CC)[:int(100)]
        #self._cache['-0x1.0p+6,0x0.0p+0'] = load2d('superroot_3_at-64_series.txt', ring=CC)[:int(100)]
        #self._cache['0x0.0p+0,0x0.0p+0,~_exp'] = load1d('superroot_3_exp_series.txt', ring=QQ, parser=long)
        #self._cache['log_@0#100'] = load1d('log_superroot_3_at1_series.txt', ring=QQ, parser=long)
        #self._cache['log_exp@0#100'] = load1d('log_superroot_3_exp_series.txt', ring=QQ, parser=long)

    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 3:
            return SymbolicFunction.__call__(self, args[0], args[1], args[2], **kwds)
        elif len(args) == 2:
            return SymbolicFunction.__call__(self, 0, args[0], args[1], **kwds)
        elif len(args) == 1:
            return SymbolicFunction.__call__(self, 0, args[0], 1, **kwds)
        else:
            raise TypeError("iterexproot_3 takes either one, two, or three arguments.")

    def _eval_(self, branch, z, a):
        """
        """
        return None

    def _evalf_branch_0_init_1_left_complex(self, branch, z, a, x_est=None, maxiter=10):
        """
        """
        if x_est is None: # estimate
            x_est = sqrt(z)
            if real(z) > 0 and real(z) < abs(imag(z)):
                x_est = real(z)**2/200 + 0.2*I
                if imag(z) < 0:
                    x_est = real(z)**2/200 - 0.2*I
        for _ in range(maxiter): # iterate
            x_next = iterexproot_2._evalf_(branch, log(z)/log(x_est), a)
            if z == real(z):
                x_next = real(x_next)
            if x_next == x_est:
                return x_next
            else:
                x_est = x_next
        return x_next

    def _evalf_branch_0_init_1_right_complex(self, branch, z, a, x_est=None, maxiter=10):
        """
        """
        if x_est is None: # estimate
            x_est = sqrt(z)
        for _ in range(maxiter): # iterate
            x_next = iterexproot_2._evalf_(branch, z**a, x_est**a/a)**(QQ(1)/a)
            if z == real(z):
                x_next = real(x_next)
            if x_next == x_est:
                return x_next
            else:
                x_est = x_next
        return x_next

    def _evalf_branch_0_init_1_negative_real(self, branch, z, a, x_est=None):
        if x_est is None: # estimate
            if imag(z) >= 0:
                x_est = -0.25 + 0.05*I
            else:
                x_est = -0.25 - 0.05*I
        return self._evalf_branch_0_init_1_right_complex(branch, z, a, x_est=x_est)

    def _evalf_branch_0_init_1_far_real(self, branch, z, a, x_est=None):
        if imag(z) > imag(self._bp):
            if abs(z - (I)) < 1:
                return sum_egf_series(N(z - (I)), self._cache['0x0.0p+0,0x1.0p+0'], ring=CC)
            elif abs(z - (1 + I)) < 0.75:
                return sum_egf_series(N(z - (1 + I)), self._cache['0x1.0p+0,0x1.0p+0'], ring=CC)
            # fallthrough
        elif imag(z) < -imag(self._bp):
            if abs(z - (-I)) < 1:
                return conjugate(sum_egf_series(N(conjugate(z) - (I)), self._cache['0x0.0p+0,0x1.0p+0'], ring=CC))
            elif abs(z - (1 - I)) < 0.75:
                return conjugate(sum_egf_series(N(conjugate(z) - (1 + I)), self._cache['0x1.0p+0,0x1.0p+0'], ring=CC))
            # fallthrough
        return None

    def _evalf_branch_0_init_1_near_real(self, branch, z, a, x_est=None):
        if z == 0:
            return 0
        elif z == 1:
            return 1
        elif abs(z - 0.25) < 0.25:
            return sum_egf_series(N(z - (0.25)), self._cache['0x1.0p-2,0x0.0p+0'], ring=RR)
        elif abs(z - 0.5) < 0.35:
            return sum_egf_series(N(z - (0.50)), self._cache['0x1.0p-1,0x0.0p+0'], ring=RR)
        elif abs(z - (0.75)) < 0.3:
            return sum_egf_series(N(z - (0.75)), self._cache['0x1.8p-1,0x0.0p+0'], ring=RR)
        elif abs(z - (0.25+0.25*I)) < 0.35:
            return sum_egf_series(
                N(z - (0.25+0.25*I)),
                self._cache['0x1.0p-2,0x1.0p-2'], ring=CC)
        elif abs(z - (0.25-0.25*I)) < 0.35:
            return conjugate(sum_egf_series(
                N(conjugate(z) - (0.25+0.25*I)),
                self._cache['0x1.0p-2,0x1.0p-2'], ring=CC))
        elif abs(z - (-2)) < 2:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-2)),
                    self._cache['-0x1.0p+1,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-2)),
                    self._cache['-0x1.0p+1,0x0.0p+0'], ring=CC))
        elif abs(z - (-4)) < 4:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-4)),
                    self._cache['-0x1.0p+2,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-4)),
                    self._cache['-0x1.0p+2,0x0.0p+0'], ring=CC))
        elif abs(z - (-8)) < 8:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-8)),
                    self._cache['-0x1.0p+3,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-8)),
                    self._cache['-0x1.0p+3,0x0.0p+0'], ring=CC))
        elif abs(z - (-16)) < 16:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-16)),
                    self._cache['-0x1.0p+4,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-16)),
                    self._cache['-0x1.0p+4,0x0.0p+0'], ring=CC))
        elif abs(z - (-32)) < 60:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-32)),
                    self._cache['-0x1.0p+5,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-32)),
                    self._cache['-0x1.0p+5,0x0.0p+0'], ring=CC))
        elif abs(z - (-64)) < 70:
            if imag(z) >= 0:
                return sum_egf_series(N(z - (-64)),
                    self._cache['-0x1.0p+6,0x0.0p+0'], ring=CC)
            else:
                return conjugate(sum_egf_series(N(conjugate(z) - (-64)),
                    self._cache['-0x1.0p+6,0x0.0p+0'], ring=CC))
        elif abs(z - 1) < 0.4:
            return sum_egf_series(N(z - (1)), self._cache['0x1.0p+0,0x0.0p+0'], ring=RR)
        #elif abs(log(z)) < 0.45:
        #    return superroot_3_exp_series(N(log(z)))
        return None

    def _evalf_(self, branch, z, a, x_est=None, parent=None, algorithm=None):
        """
        """
        x_ret = None
        if branch == 0:
            if -imag(self._bp) < imag(z) and imag(z) < imag(self._bp):
                x_ret = self._evalf_branch_0_init_1_near_real(branch, z, a, x_est=x_est)
            else:
                x_ret = self._evalf_branch_0_init_1_far_real(branch, z, a, x_est=x_est)
            if x_ret is None or not x_est is None:
                if real(z) > 0 and real(z) > abs(imag(z)):
                    x_ret = self._evalf_branch_0_init_1_right_complex(branch, z, a, x_est=x_est)
                else:
                    x_ret = self._evalf_branch_0_init_1_left_complex(branch, z, a, x_est=x_est)
        else:
            raise NotImplementedError
        return x_ret

iterexproot_3 = Function_iterexproot_3()

class Function_superroot_3(SymbolicFunction):
    """
    superroot_3(z)
    """

    def __init__(self):
        """
        """
        SymbolicFunction.__init__(self, "superroot_3", nargs=2,
                conversions=dict(mathematica='SuperRoot3'))

        self._exp_series_ = TaylorSeriesEntry.from_egf(
            load1d('superroot_3_exp_series.txt', ring=QQ, parser=long)[:100],
            at=0, radius=0.449544113030792, ring=QQ)
            
        self._at1_series_ = TaylorSeriesEntry.from_egf(
            load1d('superroot_3_at1_series.txt', ring=QQ, parser=long)[:100],
            at=1, radius=0.397624311199638, ring=QQ)
        
    def __call__(self, *args, **kwds):
        """
        """
        if len(args) == 2:
            return SymbolicFunction.__call__(self, args[0], args[1], **kwds)
        elif len(args) == 1:
            return SymbolicFunction.__call__(self, 0, args[0], **kwds)
        else:
            raise TypeError("superroot_3 takes either one or two arguments.")

    def _eval_(self, branch, z):
        """
        """
        if branch != 0:
            raise ValueError("superroot_3 is only defined on the main branch")
        return None

    def _evalf_(self, branch, z, parent=None, algorithm=None):
        """
        """
        if branch != 0:
            raise ValueError("superroot_3 is only defined on the main branch")
        return iterexproot_3._evalf_(branch, z, 1)

superroot_3 = Function_superroot_3()
