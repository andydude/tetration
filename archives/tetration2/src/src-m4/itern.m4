HTMLBEGIN(Home of Tetration - Iteration)
SITENAV()
<hr/>
<div class="darkness">
<h1>Iteration Classification</h1>
<p>
Iteration is fundamental to dynamics, chaos, analysis, recursive functions, and number theory. In most cases the kind of iteration required in these subjects is BIG(integer iteration), i.e. where the iteration parameter is an integer. However, in the study of dynamical systems BIG(continuous iteration) is paramount to the solution of some systems. Different kinds of iteration can be classified as follows:
</p>
<ul>
    <li>BIG(Discrete Iteration)</li>
    <ul>
        <li>BIG(Integer Iteration)</li>
        The usual definition of  iteration, 
        where the functional equation:
        <br/>
        V(f) SUP(V(n))(V(x)) = V(f)(V(f) SUP(V(n)-1)(V(x)))
        <br/>
        is used to generate the sequence:
        <br/>
        {V(f)(V(x)), V(f) SUP(2)(V(x)), V(f) SUP(3)(V(x)), ...}
        <br/>
        known as the EM(natural iterates) of V(f)(V(x)),
        which forms a EM(monoid) under composition.
        <br/>
        For invertible functions V(f)(V(x)), the inverses are also
        considered iterates, and form the sequence:
        <br/>
        {..., V(f) SUP(-2)(V(x)), 
        V(f) SUP(-1)(V(x)), V(x), V(f)(V(x)), 
        V(f) SUP(2)(V(x)), ...}
        <br/>
        known as the EM(integer iterates) of V(f)(V(x)),
        which forms a EM(group) under composition.
        <li>BIG(Fractional Iteration) 
        or BIG(Rational Iteration)</li>
        Solving the functional equation: 
        V(f)(V(x)) = V(g)SUP(V(n))(V(x)). 
        Once this functional equation is solved, 
        <br/>
        then the rational iterates
        V(f) SUP((V(m)/V(n)))(V(x)) are the integer iterates of V(g)(V(x)).
        <ul>
            <li>BIG(Non-analytic Fractional Iteration)</li>
            By chosing a non-analytic fractional iterate, there is no
            uniqueness of the solutions obtained.
            (Iga's <a href="mthds.html">method</a>)
            <li>BIG(Analytic Fractional Iteration)</li>
            By solving for an analytic fractional iterate, there is
            a unique solution obtained in this way.
            (Dahl's <a href="mthds.html">method</a>)
        </ul>
    </ul>
    <li>BIG(Continuous Iteration)</li>
    A generalization of the usual notion of iteration,
    where the functional equation (FE):
    <br/>
    V(f) SUP(V(n))(V(x)) = V(f)(V(f) SUP(V(n)-1)(V(x)))
    <br/>
    EM(must) be satisfied EM(for all) V(n) in the domain (real or complex).
    If this is not the case, then to discuss these kinds of "iteration" (even though they are not technically "iteration" since they do not obey the FE of iteration), we will talk about them as though they were expressions for V(f) SUP(V(n))(V(x)) where 0 &le; Re(V(n)) &le; 1 and defined elsewhere by the FE of iteration. So even though a method is analytic, if it doesn't satisfy this fundamental FE, then by this re-definition, it is non-analytic.
    <ul>
        <li>BIG(Non-analytic Continuous Iteration)</li>
        By choosing a non-analytic continuous iterate, there is no uniqueness of the solutions obtained.
        (Galidakis' and Woon's <a href="mthds.html">methods</a>)
        <li>BIG(Analytic Continuous Iteration) 
        or just BIG(Analytic Iteration)</li>
        By solving for an analytic continuous iterate, there is a unique solution obtained in this way. 
        <ul>
            <li>BIG(Real-analytic Iteration)</li>
            <li>BIG(Complex-analytic Iteration) 
            or BIG(Holomorphic Iteration)</li>
        </ul>
    </ul>
</ul>


</div>
<hr/>
<div class="darkness">
<h1>Known Analytic Iterates</h1>
<p>
bla
</p>
LS(
LI([[V(f) SUP(V(n))(V(x)) = V(x) + V(c)V(n)]],
[[if V(f)(V(x)) = V(x) + V(c) (addition)]])
LI([[V(f) SUP(V(n))(V(x)) = V(x)V(c)SUP(V(n))]],
[[if V(f)(V(x)) = V(x)V(c) (multiplication)]])
LI([[V(f) SUP(V(n))(V(x)) = V(x)^(V(c)^V(n))]],
[[if V(f)(V(x)) = V(x)SUP(V(c)) (powers)]])
LI([[V(f) SUP(V(n))(V(x)) = (V(A)V(x) + V(B))/(V(C)V(x) + V(D))]],
[[if V(f)(V(x)) = (V(a)V(x) + V(b))/(V(c)V(x) + V(d)) 
(linear fractional transformations) where:
<br/>
]])
LI([[V(f) SUP(V(n))(V(x)) = de(n, x)]],
[[if V(f)(V(x)) = E()SUP(V(x)) - 1 
(decremented exponential) where de(V(t)[[,]] V(x)) = 
<br/>
<br/>
TEXCENTER([[decexp]],
[[ & x      \\
+\ & x^2    \left(\frac{1}{2}t\right) \notag\\
+\ & x^3    \left( -\frac{1}{12}t + \frac{1}{4}t^2\right) \notag\\
+\ & x^4    \left( \frac{1}{48}t - \frac{5}{48}t^2 + \frac{1}{8}t^3\right) \notag\\
+\ & x^5    \left( -\frac{1}{180}t + \frac{1}{24}t^2 - \frac{13}{144}t^3
+ \frac{1}{16}t^4 \right) \notag\\
+\ & x^6    \left( \frac{211}{1728}t + \frac{89}{5760}t^2 - 
\frac{1}{1728}t^3 - \frac{41}{1152}t^4 + \frac{1}{40}t^5\right) \notag\\
+\ & \cdots \notag]])
]])
)
</div>
<hr/>
HTMLEND()
