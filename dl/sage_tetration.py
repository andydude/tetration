#!/usr/bin/env sage
# -*- mode: python -*-
from sage import all
from sage.all import *


# coefficient memoization
SUPERLOG_CACHE = {} 

# number of terms in the power series
SUPERLOG_ORDER = 15

# number of bits in floating-point numbers 
SUPERLOG_PREC = 53

# maximum recursion depth
SUPERLOG_MAXITER = 100

# default coefficient ring
SUPERLOG_RING = SR



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
def carleman_matrix(expr, x_x0, order=10, ring=SR):
    x, x0 = x_x0
    order = int(order)
    return matrix([[ring(diff(expr**j, x, k).subs(**{(str(x)): x0})/factorial(k) -
                         kronecker_delta(j, k))
                    for k in range(0, order + 1)]
                    for j in range(0, order + 1)])

# the Abel matrix
def abel_matrix(expr, x_x0, order=10, ring=SR):
    x, x0 = x_x0
    order = int(order)
    m = transpose(carleman_matrix(expr, x_x0, order=order, ring=ring))
    return matrix([[m[j][k]
                    for k in range(1, order + 1)]
                    for j in range(0, order)])

# variant of the Abel matrix
def superlog_matrix(log_base, order=SUPERLOG_ORDER, ring=SUPERLOG_RING):
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
def superlog_series(log_base, z, order=SUPERLOG_ORDER, ring=SUPERLOG_RING, cache=SUPERLOG_CACHE):
    order = int(order)
    try:
        key_base = float(log_base)
    except:
        key_base = 'sym'

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
    ser = sum([c*z**(i+1) for i, c in enumerate(coeff)]) - 1
    try:
        ser += z.O(order + 1)
    except:
        pass
    return ser
