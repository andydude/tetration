HTMLBEGIN(Home of Tetration - Error)
SITENAV()
<div class="darkness">
<h1>About Accuracy and Precision</h1>
<br/>
Throughout this section the following letters and names will be used:
LS([[
LI(V(n), [[the degree of linearization of exponentiation]])
LI(precreq(V(n), V(x)), 
    [[the working-precision required to perform linearization]])
LI(sigfig(V(n)[[,]] V(x)[[,]] V(y)), 
    [[the number of significant digits expected from tetration]])
LI(offset(V(x)), 
    [[the ammount of offset[[,]] offset(V(x)) = abs(V(x) - round(V(x)))]])
]])TAB()
The reason why I have not taken the time to find a BIG(sigfig) formula
for the super-logarithm is that it generally is much more "accurate"
than tetration. Tetration is also more "steep" than the super-logarithm,
so its harder to find "accurate" values with tetration. This is why
I have taken the time to find a BIG(sigfig) formula for tetration.
<h2>Working Precision</h2>TAB()
These are the formulas I have so far for working-precision. If the
value of working-precision p is below the output of this function,
then there is likely to be major round-off accumulation, and
the resulting solutions of the n-th degree linearization will
be zero. To prevent this, choose a working-precision
above the output of this function to perform an n-th degree
linearization. 
<br/><br/>
First, the definition:

LS([[
LI([[precreq(n[[,]] x)]], [[[[:= while
(linearize(n, x, p)[2,2] != linearize(n, x)[2, 2]) { p++ }; return p;]]]])
]])

<br/>
And here are some formulas:

LS([[
LI([[precreq(n[[,]] 2)]], [[= ]])
LI([[precreq(n[[,]] E())]], [[= &minus;6.7733 + 1.4314*n + 0.009*n^2]])
LI([[precreq(n[[,]] 10)]], [[= ]])
LI([[precreq(n[[,]] x)]], [[= ]])
]])


Arabic
Chinese
Latin

<h2>Significant Figures</h2>TAB()
I am still investigating the dynamics of this function, so I
don't have any final results, but here are two forms of the
function that I have some intermediate results about:

LS([[
LI([[sigfig(2[[,]] E()[[,]] V(y))]], [[= offset(y)*(x^(y - 1)^2 - 1)/(7*y^3)]])
LI([[sigfig(V(n)[[,]] E()[[,]] PI())]], [[= 0.231578 + 1.20731*log(n)]])
]])

<br/><br/>
Under Construction.
</div>
HTMLEND()
