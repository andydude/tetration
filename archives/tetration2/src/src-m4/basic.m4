HTMLBEGIN(Home of Tetration - Basics)
SITENAV()
FLOW(   [[Previous Page:]], 
        [[Welcome]], index, 
        [[Next Page:]], 
        [[Hyperops]], hyper)
<div class="darkness">
<h1>Review of Exponentiation</h1>
<p>
    Exponentiation is the process of raising a base to a power, commonly
    denoted V(x)SUP(V(y)). There are many ways of saying this, the most
    common form is: "V(x) to the V(y)" which comes from the longer
    way of saying it when V(y) is an integer V(n): "V(x) to the V(n)-th power."
</p>
<p>
    In the beginning, exponentiation was defined as iterated multiplication.
    Iteration is the process of repeating a function several times, so this
    would be a function V(x)*V(x)*V(x)*...*V(x) where there are V(n) V(x)'s.
    This forms the basis of exponentiation for integers, 
    but what about real numbers? To define exponentiation for real numbers, 
    mathematicians had to find
    certain rules that were satisfied by integer exponentiation, and use
    them to generalize it to a EM(continuously iterated multiplication).
    The rules that were found centuries ago are now known as the
    laws of exponentiation:
</p>
LS([[
LI((V(x)SUP(V(m)))(V(x)SUP(V(n))) = V(x)SUP((V(m) + V(n))),
    [[additive property of powers]])
LI((V(x)SUP(V(m)))SUP(V(n)) = V(x)SUP((V(m)V(n))),
    [[multiplicative property of powers]])
]])
<p>
    These laws allow exponentiation to be extended to rational numbers
    fairly easily, and from there to real numbers by choosing rational numbers
    that are closer and closer to a real number you want to use.
    For example, if you wanted to find V(x)SUP((3/5)), then you could
    use the multiplicative property, and notice that: 
    (V(x)SUP((3/5)))SUP(5) = V(x)SUP(3). So V(x)SUP((3/5)) is the value V(y)
    that satisfies: V(y)SUP(5) = V(x)SUP(3), because 
    (V(x)SUP((3/5)))SUP(5) = V(x)SUP((3/5)*5) = V(x)SUP(3).
</p>
<p>
    Extending the definition of exponentiation to real numbers allows
    inverse functions of exponentiation, namely EM(roots) and EM(logarithms).
    Eventually, after the investigation of logarithms, the same rules
    are found to apply to them as well. These rules have become known
    as the laws of logarithms:
</p>
LS([[
LI([[log]]SUB(V(x))(V(m)V(n)) = [[log]]SUB(V(x))(V(m)) + [[log]]SUB(V(x))(V(n)),
    [[additive property of logarithms]])
LI([[log]]SUB(V(x))(V(m)SUP(V(n))) = V(n)[[ log]]SUB(V(x))(V(m)),
    [[multiplicative property of logarithms]])
]])
<p>
    These properties form the basis of exponential and logarithmic
    arithmetic and algebraic manipulations. There are sometimes two
    additional laws that are based on each of the two above, but
    they are more of a short-cut, because they can be derived from 
    the properties above:
</p>
LS([[
LI((V(x)SUP(V(m)))/(V(x)SUP(V(n))) = V(x)SUP((V(m) - V(n))),
    [[subtractive property of powers]])
LI([[log]]SUB(V(x))(V(m)/V(n)) = [[log]]SUB(V(x))(V(m)) - [[log]]SUB(V(x))(V(n)),
    [[subtractive property of logarithms]])
]])
<p>
    
</p>
<br/>
Under Construction.
<br/>


<br/>
Under Construction.
</div>
<hr/>
<div class="darkness">
<h1>Introduction to Tetration</h1>
LS([[
LI(Tetration is the analytic iteration of an exponential function evaluated at one.,)
]])TAB()
What is the analytic iteration of an exponential function you may ask? Good question.
Lets break that down into the words that compose it. For when
its constituent words are understood, 
it is easy to understand the whole phrase:
<br/><br/>TAB()
BIG(Analytic) is a fancy way of saying infinitely smooth, which is also a special case of the term EM(continuous). BIG(Continuous) things are usually contrasted with BIG(Discrete) things, 
and both are analogous to the roles 
in mathematics that the EM(real numbers) and the EM(integers) 
play respectively. 
The integers are EM(discrete) because you can't go between them without "jumping".
With real numbers on the other hand, you can go between any number by going through other
real numbers, which makes the real numbers EM(continuous).
<br/><br/>TAB()
BIG(Iteration) is the process of applying a function to itself. 
In order for this to happen,
the output of a function must be the same kind of thing as its input. When you
iterate a function V(n) times, you are giving its output to its input V(n) times. In
mathematical notation:

LS([[
LI(V(f) SUP(V(n))(V(z)) = 
V(f) &middot; V(f) &middot; 
V(f) &middot; ... &middot; V(f) &middot; V(z)
&nbsp;&nbsp;(with V(n)&nbsp;&nbsp;V(f) s),)
]])TAB()

where "&middot;" represents composition, or equivalently:

LS([[
LI(V(f) SUP(0)(V(z)) = V(z),)
LI(V(f) SUP(1)(V(z)) = V(f) (V(z)),)
LI(V(f) SUP(V(n))(V(z)) = V(f) ( V(f) SUP(V(n)&minus;1)(V(z))),)
LI(V(f) SUP(V(n))(V(z)) = V(f) SUP(V(n)&minus;1)( V(f) (V(z))),)
]])TAB()

By nature, iteration is discrete, 
because you can only apply a function once, not half a time. The only way you can  go between iterations is by "jumping" between them. 
This makes iteration discrete.
The definition of tetration uses the word EM(continuous) 
to mean a different kind
of iteration that isn't EM(discrete). Continuous iteration
would go between iterations without "jumping" so you can find the iterates between the usual ones. So it is understood that BIG(continuous iteration)
is a generalization of discrete iteration.
<br/><br/>TAB()
BIG(Exponentiation) is the process of taking a base and raising it to a power. Usually the following names are used for different ways of doing this,
depending on which variable you are iterating with respect to:
LS([[
LI([[pow]]SUB(V(n))(V(z)) = V(z)SUP(V(n)), 
    [[a power function]])
LI([[exp]]SUB(V(b))(V(z)) = V(b)SUP(V(z)), 
    [[an exponential function]])
]])TAB()

Both of which are forms of exponentiation, but taking one to a power isn't very interesting, because
you always get one in the end. Iterated exponentiation then, would be the iteration of
an exponential function a certain number of times. Applying all of this to the definition
of tetration we understand BIG(iterated exponential) to be the function:
LS([[
LI(
	[[exp]]SUP(V(n))(V(z)) = E()^E()^E()^...^V(z)
    &nbsp;&nbsp;(with V(n) E()'s),
[[using the base of the natural 
logarithm E(), or]])
LI(
	[[exp]]SUP(V(n))SUB(V(b))(V(z)) = 
	   V(b)^V(b)^V(b)^...^V(z) 
	   &nbsp;&nbsp;(with V(n) V(b)'s),
	[[using any base b]])
]])TAB()

This function is only a discrete iteration, though, and we want continuous iteration, so we
must somehow
<a href="mthds.html">generalize</a>
this definition to get analytic iterated exponentials.

Once we have, we can apply the definition, and the definition of tetration
says to evaluate the "analytic iteration of an exponential function" at 1, so
evaluating this function at V(z) = 1 gives tetration:
LS([[
LI(SUP(V(y))V(x) = [[exp]]SUP(V(y))SUB(V(x))(1)
,)
]])
where V(f) SUP(V(n))(V(z)) = V(f)(V(f) SUP(V(n) - 1)(V(z))) and  [[exp]]SUB(V(x))(a) = V(x)SUP(a) and [[exp]]SUP(V(y))SUB(V(x))(a) = ([[exp]]SUB(V(x)))SUP(V(y))(a)

</div>
<hr/>
<div class="darkness">
<h1>About Association</h1>
<br/>TAB()
Care must be taken when performing EM(iteration).
The difference between power functions and exponential functions
manifest in their vastly different BIG(iterates). If you don't know
which one you're using, for example, if you wanted to do "3^3^3",
make sure you put your parentheses
in the correct place, and evaluation will become obvious:
LS([[
LI(((3)^3)^3 = 27^3 = 19683, 
    [[the "bottom-up" method]])
LI(3^(3^(3)) = 3^27 = 7625597484987, 
    [[the "top-down" method]])
]])TAB()
The first way of doing it, or the "bottom-up" method, which is not an iterated exponential function, but
an iterated power function, has a continuous iterate which is simply expressible
in terms of exponentiation. There will be more about this in the 
<a href="hyper.html">hyper-operator</a>
page.
When we talk about tetration, we are <i>only</i> talking about iterated exponentials, or the "top-down" method,
because this makes a new operation. Of these two operations,
iterated powers can be expressed by using the notation we used above, and 
iterated exponentials can be expressed using a new notation used on this website as:

LS([[
LI([[pow]]SUP(V(c))SUB(V(b))(V(a)) = V(a)^V(b)^V(c), 
    [[iterated powers]])
LI([[exp]]SUP(V(c))SUB(V(b))(V(a)) = SUP(V(c))V(b)SUP(V(a)), 
    [[iterated exponentials]])
]])

The reason why this notation was chosen for iterated exponentials is due
to three primary motivations:

LS([[
LI(<span style="color: silver;">
The SUP(V(y))V(x) notation has been around since 1901
</span>, (see <a href="hist.html">history</a>))
LI(<span style="color: silver;">
Assigning V(a) = 1 in SUP(V(c))V(b)SUP(V(a)) gives SUP(V(c))V(b)SUP(1) = SUP(V(c))V(b)
</span>, [[standard tetration notation]])
LI(<span style="color: silver;">
Assigning V(c) = 1 in SUP(V(c))V(b)SUP(V(a)) gives SUP(1)V(b)SUP(V(a)) = V(b)SUP(V(a))
</span>, [[standard exponentiation notation]])
]])TAB()

As you can see, assigning one to either of the superscripts, makes them disappear,
and "collapse" to earlier notations. It is this feature that makes this notation very
natural, and easy to understand. The only difficulty that could come about is in
being careful with parentheses, because depending on where you put the parentheses,
you could get very different expressions, because in general:

LS([[
LI(SUP(V(c))V(b)SUP(V(a)) &ne; SUP(V(c))(V(b)SUP(V(a))), [[]])
LI(SUP(V(c))V(b)SUP(V(a)) &ne; (SUP(V(c))V(b))SUP(V(a)), [[]])
]])
So take care when using this notation, and when necessary, use parentheses.
</div>
<hr/>
FLOW(   [[Previous Page:]], 
        [[Review]], revw, 
        [[Next Page:]], 
        [[Hyperops]], hyper)
HTMLEND()
