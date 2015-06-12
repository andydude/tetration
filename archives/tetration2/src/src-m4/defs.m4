HTMLBEGIN(Home of Tetration - Definitions)
SITENAV()
<hr/>
<div class="darkness">
<h1>About the Definitions</h1>
<p>
    The following definitions are based on widely available definitions, including 
    <a href="http://home.earthlink.net/~mrob/pub/math/largenum.html">Munafo</a>'s 
    definition of the <i>hyper-operators</i>. The only new definition here is the
    definition of the <i>super-logarithm</i>, which is discussed in more detail
    in my <a href="paper.html">paper</a>. 
</p>
</div>
<hr/>
<div class="darkness">
<h1>Definitions</h1>

<h2>Knuth</h2>
Hyper-operators:
TEXCENTER([[knuth]],
[[x \uparrow^{n} y = 
\begin{cases}
x^y & \text{if } n = 1\\
x & \text{if } n > 1 \text{ and }  y = 1\\
x \uparrow^{n-1} (x \uparrow^{n} (y-1)) & \text{otherwise}
\end{cases}]])

<h2>Exponentiation</h2>
<p>
    This is the usual definition of exponentiation, 
    defined so that integer powers and non-integer powers
    are, in effect, separate definitions. Since the
    logarithm has multiple values in the complex plane,
    it should be understood that only the principle
    branch of the logarithm is used:
</p>
LS([[
LI(V(x)SUP(1) := V(x),
    [[]])
LI(V(x)SUP(V(n)) := V(x) V(x)SUP(V(n)-1),
    [[for integer V(n) &gt; 1]])
LI(V(x)SUP(V(y)) := E()SUP(V(y) [[log]](V(x))),
    [[for non-integer V(y)]])
]])

<h2>Hyper-operations</h2>
<p>
    This is defined so that the base case of addition is defined,
    and all hyper-operators after it will have 1 as an identity element.
    For other values of hyper-operators, see the
    <a href="ident.html">Identities</a> page.
    To allow later hyper-operators to be defined in terms of previous
    hyper-operators, the last part defines hyper-operators recursively:
</p>
LS([[
LI(HYP(V(x),V(n),1) := V(x), 
    [[for integer V(n) &gt; 1]])
LI(HYP(V(x),1,V(y)) := V(x) + V(y), 
    [[for integer V(y)]])
LI(HYP(V(x),V(n),V(y)) 
    := HYP(V(x),[[V(n) - 1]],(HYP(V(x),V(n),([[V(y) - 1]])))), 
	[[for integer V(y)[[,]] V(n) and V(n) &gt; 0]])
]])

<h2>Super-logarithms</h2>
<p>
    This definition is different than any other definitions of the super-logarithm.
    The only place you can find this definition is here, on this website, and
    in my <a href="paper.html">paper</a>. The first two parts define the
    super-logarithm everywhere in terms of the interval 0 &lt; V(z) &le; 1.
    Once the values are within that interval, the third part uses the series
    approximation, which converges on that interval:
</p>
LS([[
LI(slog[[]]SUB(V(x))(V(z)) := slog[[]]SUB(V(x))(V(x)SUP(V(z))) - 1, 
    [[if V(x) &gt; 1[[,]] V(z) &le; 0]])
LI(slog[[]]SUB(V(x))(V(z)) := slog[[]]SUB(V(x))(log[[]]SUB(V(x))(V(z))) + 1, 
    [[if V(x) &gt; 1[[,]] V(z) &gt; 1]])
LI(slog[[]]SUB(V(x))(V(z)) := -1 + &sum; SUB(V(k)=1..&infin;) 
    V(z)SUP(V(k)) V(s)SUB(V(k))(V(x)), 
    [[if V(x) &gt; 1[[,]] 0 &lt; V(z) &le; 1 <br/><br/>
    where V(s)SUB(V(k))(V(x)) = lim[[]]SUB(n &rarr; &infin;) 
        det(<b>C</b>[[]]SUB(V(k))(V(x))SUB(V(n)))/
        det(<b>C</b>[[]]SUB(0)(V(x))SUB(V(n))) <br/>
    and (C[[]]SUB(V(m))(V(x))SUB(V(n)))SUB(V(jk)) =
    ( k[[]]SUP((V(j)&minus;1)) - &delta;SUB((V(j)&minus;1)V(k)) V(k)! log(V(x))[[]]SUP((1&minus;V(j))) ) 
    (1 - &delta;SUB(V(mk))) + &delta;SUB(V(mk)) <br/>
    where V(j)[[,]]V(k) = 1..V(m) and &delta;SUB(V(mk)) is Kronecker delta.]])
]])

<h2>Tetration</h2>
<p>
    This defines tetration completely in terms of the super-logarithm, but
    because the range of the super-logarithm never goes below -2, the
    first part defines tetration recursively until V(y) &gt; -2. Once
    it is, then V(y) will be within the proper interval for the second part.
    The reason why neither of the intervals includes -2, is because 
    tetration is undefined at V(y) = -2. Furthermore, tetration is undefined
    at every negative integer except -1.
</p>
LS([[
LI(SUP(V(y))V(x) := log[[]]SUB(V(x))(SUP(V(y)+1)V(x)), 
    [[if V(x) &gt; 1[[,]] V(y) &lt; -2]])
LI(SUP(V(y))V(x) := slog[[]]SBP(V(x),-1)(V(y)), 
    [[if V(x) &gt; 1[[,]] V(y) &gt; -2]])
]])

<h2>Continuously Iterated Exponentials</h2>
<p>
    Although it is easy to recognize that tetration (2 arguments) can
    be defined in terms of iterated exponentiation (3 arguments) where
    the main input is 1, an interesting relationship allows 
    iterated exponentiation (3 arguments) to be defined in terms of
    tetration (2 arguments) without any loss of information, so
    this is its most natural definition:
</p>
LS([[
LI(TA(V(y),V(x),V(a))
    := SUP(V(y) + slog[[]]SUB(V(x))(V(a)))V(x),
    [[if V(x) &gt; 1]])
]])

</div>
<hr/>
HTMLEND()