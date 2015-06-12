HTMLBEGIN(Home of Tetration - Application)
SITENAV()
<hr/>
<div class="darkness">
<h1>Methods of Extending Tetration</h1>
<p>
This page consists of two major sections, BIG(analytic iteration methods) which allow "nice" functions to be iterated non-integer number of times in such a way that the general iterate is real-analytic or complex-analytic with respect to V(t) in V(f) SUP(V(t))(V(x)), and BIG(non-integer tetration methods) which only apply to tetration (and iterated exponentials), not the iteration of any function. Before we get to these sections, however, it should be noted that one approach is not covered in these sections, namely BIG(continuous iteration). Continuous iteration is the approach of finding a continuous bivariate function that describes the iterates of a univariate continuous function such that the bivariate function is also continuous. This is very easy to do, and can be done with line segments or Lagrange interpolating polynomials. Continuous iteration is by no means unique to a given function, but in many cases a unique analytic iterate exists for a given function, which also makes it harder to find. One such method for interpolating integer iterates (but not obeying the functional equation V(f) SUP(V(n))(V(x)) = V(f)(V(f) SUP(V(n)-1)(V(x))), which is fundamental to the concept of iteration) is S. C. Woon's formula:
</p>

TEXCENTER([[woon]],
[[f^t(x) 
= w^t\left(x + \sum^{\infty}_{n=1}\frac{(-1)^n}{n!}
	\left[\prod^{n-1}_{k=0} (t-k)\right]
	\left[x + \sum^{n}_{m=1} \left(\frac{-1}{w}\right)^m 
	{n \choose m} f^m(x)\right]\right)]])

<p>
Since S. C. Woon's formula does not satisfy the functional equation of iteration in general, one could say that it can't be called "iteration" at all. His formula is certainly analytic, and it corresponds to integer iterates, but together it does not constitute analytic iteration, because although it is "analytic" it is not "iteration". There is a posibility, however, that there exists a V(w) such that S. C. Woon's formula does satisfy the functional equation of iteration, but how such a V(w) could be found is unknown.
</p>
<p>
The other continuous iteration methods described earlier can also suffer from this problem of only satisfying "analicity" or "iteration" requirements but not both. For example for a piecewise defined function with a line-segment between V(x) and V(f)(V(x)) and defined elsewhere by V(f) SUP(V(n))(V(x)) = V(f)(V(f) SUP(V(n)-1)(V(x))) will of course satisfy this "iteration" requirement, but it will fail to be analytic in general. This theme is prevalent thoughout all methods discussed here, where the best methods are the ones that produce what seems to be a unique solution are those that are both "analytic" and "iteration". 
</p>
 
</div>
<hr/>
<div class="darkness">
<h1>Analytic Iteration Methods</h1>
<br/>
Before discussing methods of analytic iteration and 
solving functional equations (FE), lets overview them:
LS([[
LI(embedding matrices, 
    [[Turns composition M[ V(f )&middot;V(g)] into matrix multiplication M[ V(f )] M[V(g)].]])
LI(fractional iteration, 
    [[Solve the FE: V(f)(V(x)) = V(g)SUP(V(n))(V(x)) (for g).]])
LI(Abel's functional equation,
    [[Solve the FE: A[V(f)](V(f)(V(x))) = A[V(f)](V(x)) + 1 (for A).]])
LI(Schr&ouml;der's functional equation,
    [[Solve the FE: S[V(f)](V(f)(V(x))) = c S[V(f)](V(x)) (for S).]])
LI(Boettcher's functional equation,
    [[Solve the FE: B[V(f)](V(f)(V(x))) = (B[V(f)](V(x)))SUP(V(c)) (for B).]])
]])


</div>
<hr/>
<div class="darkness">
<h1>Non-integer Tetration Methods</h1>
<br/>
Before we start discussing the different methods available
for continuous iteration, lets overview them:
LS([[
LI(Abel linearization,
    [[Solve the Abel linearization equation
    (used in my <a href="paper.html">paper</a>).]])
LI(Bell matrices (Schr&ouml;der polynomials), 
    [[Turn the composition B[ V(f )&middot;V(g)] into B[V(g)] B[ V(f )].]])
LI(Carleman embedding matrices, 
    [[Turn the composition M[ V(f )&middot;V(g)] into M[ V(f )] M[V(g)].]])
LI(fractional iterate interpolation, 
    [[Interpolate points of the form: 
    (V(x)SUB(0), V(x)SUB(1)) ... 
    (V(x)SUB(V(n)), &nbsp;V(f )(V(x)SUB(0))).]])
LI(Woon's nested series expansion, 
    [[Iterates any operator complex-V(s) times.]])
]])


</div>
<hr/>
HTMLEND()
