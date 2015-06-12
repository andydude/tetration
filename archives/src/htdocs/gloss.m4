m4_include([htdocs/nav.m4])
ppNavHome()
ppSep(std)
<h1>Glossary</h1>
ppGlossWrap([
ppGlossDef(Abel function,
[An Abel function ppV(A)(ppV(z)) is a function associated
  with a function ppV(f )(ppV(z)) that satisfies Abel's ppGloss(functional equation):
  <br/>ppTab()ppV(A)( ppV(f )(ppV(z))) = ppV(A)(ppV(z)) + 1])
ppGlossDef(Abel matrix,
[ppNew() -- A matrix based on the ppGloss(Bell matrix).])
ppGlossDef(addition, 
[Addition is a ppGloss(binary operation) defined on the complex numbers. For more information on this website, click <a href="hy-add.html">here</a>.])
ppGlossDef(analytic, 
[A special case of ppGloss(continuous) meaning infinitely differentiable, plus some other requirements. The other requirements for a function being analytic differ depending on whether the requirements are for real analytic or complex analytic functions.
<ul>
<li>ppEm(real analytic)</li>
<li>ppEm(complex analytic)</li>
</ul>])
ppGlossDef(Bell matrix, 
[A Bell matrix B&#91; ppV(f )&#93; is a matrix associated with a function ppV(f )(ppV(x)) such that: 
    <br/>ppTexInline([gs-bell],[[B[f \circ g] = B[g] B[f]]])    
    ppTab()for all ppV(g)(ppV(x)).])
ppGlossDef(binary operation, 
[.])
ppGlossDef(Carleman matrix, 
[A Carleman matrix M&#91; ppV(f )&#93; is a matrix associated with a function ppV(f )(ppV(x)) such that:
    <br/>ppTexInline([gs-carleman],[[M[f \circ g] = M[f] M[g]]])
    ppTab()for all ppV(g)(ppV(x)).])
ppGlossDef(closed form, 
[.])
ppGlossDef(continuous, 
[Continuous things are usually contrasted with ppGloss(discrete) things.
    <br/>A good example of something continuous is the set of real numbers.])
ppGlossDef(continuous iteration, 
[Continuous iteration is a <a href="it-methds.html">generalization</a>
    of discrete ppGloss(iteration).
    <br/>This effectively turns a function ppV(f )(ppV(x)) into a function
    ppV(g)(ppV(n)[,] ppV(x)) = ppV(f )ppSup(ppV(n))(ppV(x)).
    <br/>Two ways of doing this are to satisfy:
    <br/>ppTab()ppV(g)(ppV(n)[,] ppV(x)) = ppV(f )ppSup(ppV(n))(ppV(x))ppTab() for integer ppV(n)
    <br/>which is a weaker form of continuous iteration[,] or:
    <br/>ppTab()ppV(g)(1[,] ppV(x)) = ppV(f )(ppV(x))ppTab()ppTab() and
    <br/>ppTab()ppV(g)(ppV(y)[,] ppV(x)) = ppV(f )(ppV(g)(ppV(y) &minus; 1[,] ppV(x)))
        ppTab()for all real ppV(y)[,] and
    
    <br/>ppTab()ppV(g)(ppV(y)[,] ppV(x)) = ppV(g)(ppV(y) &minus; 1[,] ppV(f )(ppV(x)))
        ppTab()for all real ppV(y)
    <br/>which is a stronger form of continuous iteration.])
ppGlossDef(discrete, 
[Discrete things are usually contrasted with ppGloss(continuous) things.
    <br/>A good example of something discrete is the set of integers.])
ppGlossDef(discrete iteration, 
[See ppGloss(iteration)])
ppGlossDef(dynamical system, 
[])
ppGlossDef(endofunction, 
[The prefix ppIt(endo)- is usually used with terms with a ppGloss(domain) and ppGloss(range) like functions, morphisms, and functors. An ppEm(endofunction) is a function whose domain and range are the same set.])
ppGlossDef(evolution function, 
[])
ppGlossDef(exponential factorial, 
[Not to be confused with ordinary ppGloss(factorial)s. The exponential factorial is defined by ppV(EF)(ppV(x)) = ppV(x)ppSup(ppV(EF)(ppV(x)-1)). For more information on this website click <a href="fn-expfac.html">here</a>. For more information from other websites, see ppWikipedia(Exponential_factorial).])
ppGlossDef(exponential, 
[An exponential function is any function of the form:
<br/>ppTab()[exp]ppSub(ppV(b))(ppV(z)) = ppV(b)ppSup(ppV(z))])
ppGlossDef(exponentiation, 
[Exponentiation is the process of raising a base to a power.
<br/>Exponentiation is usually denoted: ppV(a)^ppV(b) or ppV(a)ppSup(ppV(b)).])
ppGlossDef(flow, 
[See ppGloss(iteration).])
ppGlossDef(functional equation, 
[A functional equation is an equation in which a function is being solved for instead of a variable. Functional equations provide many valuable tools for performing iteration on analytic functions. For more information on this website, click <a href="it-funceq.html">here</a>. For more information from other sources, see 
ppMathWorld(FunctionalEquation),
ppPlanetMath(FunctionalEquation), or
ppWikipedia(Functional_equation).
])
ppGlossDef(hyper-ppV(n), 
[The ppV(n)-th member of the hyper-operation sequence is known as hyper-ppV(n).])
ppGlossDef(hyper-operator, 
[A hyper-operator is any member of the hyper-operator sequence.])
ppGlossDef(hyper-operator sequence, 
[The hyper-operator sequence is:
<br/>ppTab()hyper1 = ppGloss(addition)[,]
<br/>ppTab()hyper2 = ppGloss(multiplication)[,]
<br/>ppTab()hyper3 = ppGloss(exponentiation)[,]
<br/>ppTab()hyper4 = ppGloss(tetration)[,]
<br/>ppTab()hyper5 = ppGloss(pentation) ... and so on.])
ppGlossDef(hyperpower, 
[See ppGloss(tetrate).])
ppGlossDef(infinite tetrate, 
[.])
ppGlossDef(infinitely iterated exponential, 
[The infinitely iterated exponential is [T]ppSup(&infin;)ppV(x).])
ppGlossDef(inverse function, 
[An inverse function is a function ppV(g)(ppV(x)) associated with a 
    function ppV(f )(ppV(x)) that satisfies:
    <br/>ppTab()ppV(f )(ppV(g)(ppV(x))) = ppV(x) ppTab()and
    <br/>ppTab()ppV(g)( ppV(f )(ppV(x))) = ppV(x)
    <br/>over some interval of ppV(x).
    <br/>An inverse function is usually denoted: ppV(f )ppSup(&minus;1)(ppV(x)).])
ppGlossDef(iterated exponentiation, 
[Iterated exponentiation can be interpreted as either:
    <br/>ppTab()ppGloss(iterated exponential)s or
    <br/>ppTab()ppGloss(iterated power)s[,]
    <br/> but
    usually the former is implied[,] so on this website
    the former terminology will be used.])
ppGlossDef(iterated exponential, 
[An iterated exponential is a function of the form:
    <br/>ppTab()[exp]SBP(ppV(b),ppV(n))(ppV(z))
    ppTab()for integer ppV(n).])
ppGlossDef(iterated power, 
[An iterated power is a function of the form:
    <br/>ppTab()[pow]ppSup(ppV(n))ppSub(ppV(b))(ppV(z))
    ppTab()for integer ppV(n).])
ppGlossDef(iterate, 
[The ppV(t)-fold iterate of a function ppV(f )(ppV(x)) is ppV(f )ppSup(ppV(t))(ppV(x)) 
where ppV(t) is constant.])
ppGlossDef(iteration, 
[Iteration is the process of applying a function repeatedly, or
using the output of a function as its input, a given number of times.])
ppGlossDef(iterational, 
[ppNew() -- The ppEm(iterational) 
of a function ppV(f )(ppV(x)) from ppV(x) is ppV(f )ppSup(ppV(t))(ppV(x)) 
where ppV(x) is constant.])
ppGlossDef(Lambert W-function, 
[The Lambert ppV(W)-function is the inverse function of:
<br/>ppTab()ppV(f )(ppV(x)) = ppV(x)ppE()ppSup(ppV(x))])
ppGlossDef(logarithm, 
[A logarithm is an inverse function of an ppGloss(exponential function)])
ppGlossDef(matrix, 
[A matrix is a 2-dimensional array of elements. 
    <br/>The elements of a matrix are usually integers or real numbers.])
ppGlossDef(Munafo class, 
[A number associated with "how big" a number is. 
    <br/>The elements of a matrix are usually integers or real numbers.])
ppGlossDef(orbit, 
[See ppGloss(iterational).])
ppGlossDef(pentation, 
[Pentation is the ppGloss(orbit) of a ppGloss(tetrational function) from 1.])
ppGlossDef(power, 
[A power function is any function of the form:
<br/>ppTab()[pow]ppSub(ppV(n))(ppV(z)) = ppV(z)ppSup(ppV(n))])
ppGlossDef(product-logarithm, 
[A product-logarithm is the inverse function of:
<br/>ppTab()ppV(f )(ppV(x)) = ppV(x)ppV(b)ppSup(ppV(x))])
ppGlossDef(Puiseux series, 
[Involves logarithms.])
ppGlossDef(root, 
[A root is an inverse function of a ppGloss(power function).])
ppGlossDef(root (number), 
[A root is also another name for a ppGloss(zero of a function).])
ppGlossDef(self-map, 
[See ppGloss(endofunction).])
ppGlossDef(Schr&ouml;der function,
[An Schroeder function ppV(S)(ppV(z)) is a function associated
    with a function ppV(f )(ppV(z)) that satisfies
the Schroeder functional equation:
<br/>ppTab()ppV(S)( ppV(f )(ppV(z))) = ppV(c) ppV(S)(ppV(z)).])
ppGlossDef(super-exponential, 
[See ppGloss(tetrational).])
ppGlossDef(super-exponentiation, 
[Old name for ppGloss(tetration) coined by Bromer.])
ppGlossDef(super-logarithm, 
[A super-logarithm is an inverse function of a ppGloss(tetrational) function.])
ppGlossDef(super-power, 
[See ppGloss(tetrate).])
ppGlossDef(super-root, 
[A super-root is an inverse function of a ppGloss(tetrate) function.])
ppGlossDef(Taylor series, 
[Usual.])
ppGlossDef(tetrate, 
[ppNew() -- This term can have two meanings: as a verb, and as a noun. 
<ul>
<li>To ppEm(tetrate) (ppIt(v.) ppIt(TET-trayt)) a number means to perform ppGloss(tetration) on it.</li>
<li>The ppV(n)-th ppEm(tetrate) (ppIt(n.) ppIt(TET-trit)) is a function from ppV(x) to ppV(x)-tetra-ppV(n). Formerly:
<ul>
<li>ppGloss(super-power), </li>
<li>ppGloss(hyper-power), or </li>
<li>ppGloss(tower).</li>
</ul>
</li>
</ul>])
ppGlossDef(tetration, 
[ppEm(Tetration) is the ppGloss(iterational) of an ppGloss(exponential) from 1.
For more information on tetration, two really great places to start are:
<a href="http://mathworld.wolfram.com/PowerTower.html">MathWorld</a> and
<a href="http://en.wikipedia.org/wiki/Tetration">Wikipedia</a>, 
the page on this website about 
<a href="tetra.html">tetration</a>, and of course, this rest of this entire website is about tetration.])
ppGlossDef(tetrational, 
[The base-ppV(b) ppEm(tetrational) is a function from ppV(x) to ppV(b)-tetra-ppV(x).])
ppGlossDef(zero of a function, 
[A zero of a function is a number ppV(c) 
    such that ppV(f )(ppV(c)) = 0])
])
