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

def carleman_matrix(expr, x_x0, order=10, ring=SR):
    x, x0 = x_x0
    order = int(order)
    return matrix([[ring(diff(expr**j, x, k).subs(**{(str(x)): x0}) -
                         kronecker_delta(j, k)*factorial(k))
                    for k in range(0, order + 1)]
                    for j in range(0, order + 1)])

# variant of the Abel matrix
def superlog_matrix(log_base, order=SUPERLOG_ORDER, ring=SUPERLOG_RING):
    order = int(order)
    return matrix([[ring((Integer(k)**Integer(j)) -
                         kronecker_delta(Integer(j), Integer(k))*factorial(Integer(j))/((log_base)**Integer(j)))
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
    try:
        ser = sum([c*z**(i+1) for i, c in enumerate(coeff)]) - 1 + z.O(order + 1)
    except:
        ser = sum([c*z**(i+1) for i, c in enumerate(coeff)]) - 1
    return ser
