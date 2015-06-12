HTMLBEGIN(Home of Tetration - Identities)
SITENAV()
<hr/>
<div class="darkness">
<h1>About the Identities</h1>
<br/>TAB()
It is my hope that this list is as comprehensive as possible. To that end,
I have included some things that have little to do with
EM(tetration) or EM(hyper-operations), except that they are nice 
relationships. As a general note, some browsers have trouble with
multiple subscripts or superscripts, so where there might be a
problem I have either made the formula into an image, or used
either "_" or "^" respectively.
</div>
<hr/>
<div class="darkness">
<h1>Axioms</h1>
<br/>
<table class="middleone"><tbody><tr><td>TAB()</td>
<td style="color:white;">
&bull;&nbsp;
</td><td>
<img src="img/formu-tet.png"/>
TAB()</td><td>
the defining property of tetration
</td></tr>
<tr><td>TAB()</td><td style="color:white;">
&bull;&nbsp;
</td><td>
<img src="img/formu-slog.png"/>TAB()
</td><td>
the defining property of super-logarithms
</td></tr>
</tbody></table>

<!--
LI([[slog]]SUB(V(x))(V(x)SUP(V(z))) = [[slog]]SUB(V(x))(V(x)) - 1 , 
    [[]])
LI(HYP(V(x),V(n),V(y)) = V(x)[SUP((V(n)&minus;1))V(x)]SUP(y&minus;1), 
    [[defining property of hyper-operations]])
-->

</div>
<hr/>
<div class="darkness">
<h1>Identities</h1>

<h2>Common Definitions</h2>
<table class="middleone"><tbody><tr><td>TAB()</td>
<td style="color:white;">
&bull;&nbsp;SUP(V(n))V(x)SUP(V(a)) =
</td><td>
<img src="img/formu-iterexp.png"/>
TAB()</td><td>
for iterated exponentiation
</td></tr>
<tr><td>TAB()</td><td style="color:white;">
&bull;&nbsp;SUP(V(n))V(x) =
</td><td>
<img src="img/formu-tetrate.png"/>
</td><td>
for integer tetration
</td></tr>
</tbody></table>

<h2>Simple Definitions</h2>
LS([[
LI(SUP(V(n))V(x)SUP(V(a)) = [[exp]]SUP(V(n))SUB(V(x))(V(a)), 
    [[for iterated exponentiation]])
LI(SUP(V(n))V(x) = SUP(V(n))V(x)SUP(1),
    [[for integer tetration]])
]])

<h2>Inverse Function Formulas</h2>
LS([[
LI(V(z) = SUP(V(y))V(x), [[tetration]])
LI(V(y) = [[slog]]SUB(V(x))(V(z)), [[super-logarithm]])
LI(V(x) = [[srt]]SUB(V(y))(V(z)), [[super-root]])
]])LS([[
LI(V(z) = SUP(V(y))V(x)SUP(V(a)),
    [[iterated exponentiation]])
LI(V(y) = [[slog]]SUB(V(x))(V(z)) &minus; [[slog]]SUB(V(x))(V(a)),
    [[inverse iterated exponentiation with respect to V(y)]])
LI(V(x) = [[srt]]_(y + [[slog]]SUB(V(x))(V(a)))(V(z)),
    [[inverse iterated exponentiation with respect to V(x)]])
LI(V(a) = SUP(&minus;V(y))V(x)SUP(V(z)),
    [[inverse iterated exponentiation with respect to V(a)]])
]])

<h2>Integer Values of Tetration</h2>
LS([[
LI(SUP(&minus;V(n))V(x), [[undefined for integer V(n)]])
LI(SUP(&minus;2)V(x) = &plusmn;&infin;, [[]])
LI(SUP(&minus;1)V(x) = 0, [[]])
LI(SUP(0)V(x) = 1, [[]])
LI(SUP(1)V(x) = V(x), [[]])
LI(SUP(2)V(x) = V(x)SUP(V(x)), [[]])
LI(SUP(&infin;)V(x) = &minus;V(W)(&minus;[[log]](V(z))) / [[log]](V(z)), 
    [[in terms of the EM(product-logarithm), the Lambert-V(W) function.]])
LI(SUP(&minus;&infin;)V(x) = SUP(&infin;)V(x), 
    [[is a different branch of the infinite iterated exponential.]])
]])

<h2>Integer Values of Iterated Exponentiation</h2>
LS([[
LI(SUP(&minus;V(n))V(x)SUP(V(a)) = 
    [[log]]SUP(V(n))SUB(V(x))(V(a)), [[]])
LI(SUP(&minus;2)V(x)SUP(V(a)) = [[log]]SUB(V(x))([[log]]SUB(V(x))(V(a))), [[]])
LI(SUP(&minus;1)V(x)SUP(V(a)) = [[log]]SUB(V(x))(V(a)), [[]])
LI(SUP(0)V(x)SUP(V(a)) = V(a), [[]])
LI(SUP(1)V(x)SUP(V(a)) = V(x)SUP(V(a)), [[]])
LI(SUP(2)V(x)SUP(V(a)) = V(x)^V(x)^V(a), [[the graph of which made this website's logo]])
LI(SUP(V(n))V(x)SUP(V(a)) = [[exp]]SUP(V(n))SUB(V(x))(V(a)), [[]])
LI(SUP(&infin;)V(x)SUP(V(a)) = SUP(&infin;)V(x), 
    [[in terms of the EM(infinite iterated exponential).]])
LI(SUP(&minus;&infin;)V(x)SUP(V(a)) = SUP(&infin;)V(x), 
    [[is a different branch of the infinite iterated exponential.]])

]])

<h2>The Infinite Iterated Exponential and Company</h2>
This table shows an interesting relationship:
that these functions are so similar, they can all be expressed in terms of each other.
<br/><br/>
<table class="middleone"><tbody>
<tr><td>TAB()</td>
<td style="color:white;">
&bull;&nbsp;SUP(&infin;)V(x)
</td><td>
<td style="color:white;">
= &minus;V(W)(&minus;[[log]](V(z))) / [[log]](V(z))TAB()
</td><td>
<td style="color:white;">
= 1 / [[srt]]SUB(2)(1 / V(x))
TAB()</td><td>
the infinite iterated exponential
</td></tr>

<tr><td>TAB()</td>
<td style="color:white;">
&bull;&nbsp;SUP(&infin;)(E()SUP(&minus;V(x)))V(x)
</td><td>
<td style="color:white;">
= V(W)(V(x))
</td><td>
<td style="color:white;">
= V(x) / [[srt]]SUB(2)(E()SUP(V(x)))
TAB()</td><td>
the product-logarithm
</td></tr>

<tr><td>TAB()</td>
<td style="color:white;">
&bull;&nbsp;1 / SUP(&infin;)(1 / V(x))TAB()
</td><td>
<td style="color:white;">
= [[log]](V(z)) / V(W)([[log]](V(z)))
</td><td>
<td style="color:white;">
= [[srt]]SUB(2)(V(x))
TAB()</td><td>
the square super-root
</td></tr>

</tbody></table>
<br/><br/>

<h2>General Piecewise-Definitions</h2>
For tetration:
LS([[
LI(SUP(V(y))V(x) = [[log]]SUB(V(x))(SUP(V(y)+1)V(x)),
    [[if V(y) &lt; -1[[,]] note: this piece iterates!]])
LI(SUP(V(y))V(x) = V(t)(V(x), V(y)),
    [[if -1 &lt; V(y) &le; 0]])
LI(SUP(V(y))V(x) = V(x)^(SUP(V(y)&minus;1)V(x)),
    [[if V(y) &gt; 0[[,]] note: this piece iterates!]])
]])TAB()
where V(t)(V(x), V(y)) is the EM(critical function) for tetration.
<br/><br/>
For the super-logarithm:
LS([[
LI([[slog]]SUB(V(x))(V(z)) = 
    [[slog]]SUB(V(x))(V(x)SUP(V(z))) &minus; 1, 
    [[if V(z) &le; 0]])
LI([[slog]]SUB(V(x))(V(z)) = V(s)(V(x), V(z)), 
    [[if 0 &lt; V(z) &le; 1]])
LI([[slog]]SUB(V(x))(V(z)) = 
    [[slog]]SUB(V(x))([[log]]SUB(V(x))(V(z))) + 1,
    [[if V(z) &gt; 1[[,]] note: this piece iterates!]])
]])TAB()
where V(s)(V(x), V(z)) is the EM(critical function) for the super-logarithm.

<h2>A Simple Extension to Real Numbers</h2>
The simplest extension to real numbers is the bare minimum required
to obey the known integer values for tetration and the super-logarithm:
LS([[
LI(V(t)(V(x), V(y)) = V(y) + 1, 
    [[if -1 &lt; V(y) &le; 0, for tetration]])
LI(V(s)(V(x), V(z)) = V(z) &minus; 1, 
    [[if 0 &lt; V(z) &le; 1, for superlog]])
]])
which satisfy the constraints:
LS([[
LI(V(t)(V(x), -1) = 0, [[like SUP(-1)V(x) = 0]])
LI(V(t)(V(x), 0) = 1, [[like SUP(0)V(x) = 1]])
]])TAB()
and
LS([[
LI(V(s)(V(x), 0) = -1, [[like [[slog]]SUB(V(x))(0) = -1]])
LI(V(s)(V(x), 1) = 0, [[like [[slog]]SUB(V(x))(1) = 0]])
]])

<h2>Complex Conjugate Properties</h2>
Using my extension, these have been verified numerically
for inputs with small imaginary parts between &minus;1/2 and 1/2.
LS([[
LI(conj(SUP(V(y))V(x)) = SUP(conj(V(y)))V(x), [[for tetration]])
LI(conj([[slog]]SUB(V(x))(V(z))) = [[slog]]SUB(V(x))(conj(V(z))), 
    [[for superlog]])
]])

<h2>Integration Formulas</h2>
LS([[
LI(&int; SUB(V(x)=0..1) V(x)SUP(V(x)) V(<b>d</b>x) = 
    &sum; SUB(V(n)=1..&infin;) (&minus;1)SUP(V(n)+1) / V(n)SUP(V(n)), 
[[<a href="http://mathworld.wolfram.com/PowerTower.html">Power Tower</a>
Formula #27 -- From MathWorld]])
LI(&int; SUB(V(x)=0..1) V(x)SUP(&minus;V(x)) V(<b>d</b>x) = 
    &sum; SUB(V(n)=1..&infin;) 1 / V(n)SUP(V(n)), 
[[<a href="http://mathworld.wolfram.com/PowerTower.html">Power Tower</a>
Formula #29 -- From MathWorld]])
]])

<h2>Hyper-operator Notation</h2>
LS([[
LI(HYP(V(x),V(n),V(y)), 
    [[Munafo's hyper-operator notation (<i>de facto</i> standard)]])
LI(HYP(V(x),V(n),V(y)) = V(x)&uarr;SUP((V(n)&minus;2)) V(y), 
    [[Knuth's extended up-arrow notation (<i>acedemic</i> standard)]])
LI(HYP(V(x),V(n),V(y)) = V(x) &rarr; V(y) &rarr; (V(n) &minus; 2), 
    [[Conway's chained-arrow notation]])
LI(HYP(V(x),V(n),V(y)) = { V(x)[[,]] V(y)[[,]] V(n) }, 
    [[Bower's array notation]])
LI(HYP(V(x),V(n),V(y)) = hyper(V(x), V(n), V(y)), 
    [[The hyper() function notation]])
LI(HYP(V(x),V(n),V(y)) = hyper-V(n)(V(x), V(y)), 
    [[The hyper-]]V(n)[[() function notation]])
]])

<h2>Tetration Notation</h2>
LS([[
LI(SUP(V(y))V(x) = "<code>x^^y</code>", [[ASCII notation for tetration]])
LI(SUP(V(y))V(x) = V(x)&uarr;&uarr;V(y), [[Knuth's up-arrow notation]])
LI(SUP(V(y))V(x) = V(x)&uarr;SUP(2) V(y), [[Knuth's extended up-arrow notation]])
LI(SUP(V(y))V(x) = V(x) &rarr; V(y) &rarr; 2, 
    [[Conway's chained-arrow notation]])
LI(SUP(V(y))V(x) = HYP(V(x), 4, V(y)), 
    [[Munafo's hyper-operator notation (<i>de facto</i> standard)]])
LI(SUP(V(y))V(x) = hyper(V(x), 4, V(y)), 
    [[The hyper() function notation]])
LI(SUP(V(y))V(x) = hyper4(V(x), V(y)), 
    [[The hyper-]]V(n)[[() function notation]])
LI(SUP(V(y))V(x) = [[twr]]SUB(V(y))(V(x)), [[A notation for EM(power tower) functions]])
LI(SUP(V(y))V(x) = [[tet]]SUB(V(x))(V(y)), [[A notation for EM(tetrational) functions]])
]])

<h2>Iterated Exponentiation Notation</h2>
Galidakis uses the notation SUP(V(y))(V(x), V(a)) for iterated exponentiation,
which is beneficial when V(a) is complicated.
In ASCII, the same can be expressed using the notation "<code>x^^y@a</code>", 
which can be found in several places around the internet. Interestingly,
some have noticed that the notation "<code>x^^y.a</code>" is equivalent
to the first-degree approximation of tetration, where V(y) is the integer part and V(a) is the fractional part of the value being tetrated.
LS([[
LI(SUP(V(y))V(x)SUP(V(a)) = "<code>x^^y@a</code>", 
    [[ASCII notation for iterated exponentiation]])
LI(SUP(V(y))V(x)SUP(V(a)) = "<code>x^^y.a</code>", 
    [[ASCII notation for approximate iterated exponentiation]])
LI(SUP(V(y))V(x)SUP(V(a)) = SUP(V(y))(V(x), V(a)), 
    [[Galidakis' notation for iterated exponentiation]])
LI(SUP(V(y))V(x)SUP(V(a)) = [[exp]]SUP(V(y))SUB(V(x))(V(a)), 
    [[A functional notation for iterated exponentiation]])
]])

<h2>Miscellaneous</h2>
LS([[
LI(V(x)SUP(V(y)) = E()SUP(V(y) log(V(x))), 
    [[exponentiation in terms of BIG(exp) and BIG(log)]])
LI(V(x)SUP(V(y)) = SUP(1 + [[slog_]]V(x)(V(y)))V(x),
    [[exponentiation in terms of BIG(tet) and BIG(slog)]])
LI(V(x)SUP(V(y)) = SUP(1)V(x)SUP(V(y)), 
    [[exponentiation in terms of continuously iterated exponentiation]])
LI(SUP(V(y))V(x) = SUP(V(y))V(x)SUP(1), 
    [[tetration in terms of continuously iterated exponentiation]])
LI(SUP(V(y))V(x)SUP(V(a)) = SUP(V(y) + [[slog_]]V(x)(V(a)))V(x), 
    [[continuously iterated exponentiation in terms of tetration]])
]])


</div>
<hr/>
<div class="darkness">
<h1>Other Things Known</h1>
<br/>
LS([[
LI([[SUP(&infin;)V(x) 
<span style="color: silver;">
converges on the interval [E()SUP(&minus;E()), E()SUP(1/E())].
</span>]],)


LI([[
<span style="color: silver;">
"In 1990, [Daniel Geisler] realized that the method [he] had discovered for defining tetration for complex numbers was not limited to tetration, but applied to iterated functions in the complex domain with a hyperbolic or irrationally neutral fixed point not at infinity."
<br/>TAB() --
[<a href="http://www.tetration.org">Tetraiton.org</a>]
</span>]],)

]])
</div>
<hr/>
HTMLEND()