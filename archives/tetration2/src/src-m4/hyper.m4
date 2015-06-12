HTMLBEGIN(Home of Tetration - Hyper-operators)
SITENAV()
FLOW(   [[Previous Page:]], 
        [[Basics]], basic, 
        [[Next Page:]], 
        [[Tetration]], tetra)
<div class="darkness">
<h1>About Hyper-operators</h1>
<p>
    Hyper-operators or BIG(hyper-operations), are members of the
    hyper-operation sequence, of which the first few members are:
    addition, multiplication, exponentiation, tetration, pentation,
    hexation, and so on. The first three are very well understood,
    but the later operations are not so well understood, but since
    they are defined in terms of the previous operation, at least
    we know integer values.
</p>
<p>
    The hyper-operation sequence has also been known as the
    BIG(Ackermann) function and the BIG(Grzegorczyk) hierarchy.
    The most notable sources that use this terminology are
    Daniel Geisler's 
    <a href="http://www.tetration.org">Tetration.org</a>
    and Rubstov and Romerio's paper:
    <a href="http://www.rotarysaluzzo.it/filePDF/Iperoperazioni%20(1).pdf"
    >Ackermann's function and New Arithmetical Operations</a>
    respectively.
    Since "EM(hyper-operations)" is the generic name for
    this sequence, it is the terminology that is used here.
    Rubstov and Romerio's paper is also where I got the terms
    EM(super-logarithm) and EM(super-root).
</p>
<p>
</p>
</div>
<hr/>
<div class="darkness">
<h1>Values of Hyper-operators</h1>
<p>
    The hyper-operations sequence is denoted by HYP(V(x), V(n), V(y)),
    and although there is ongoing research into extending it
    to all real arguments, the domain of the ternary function
    associated with it is BIG(Z)SUP(3) (all integers). Even
    with this definition, there are quite a few properties
    that can be gleaned. Most of the time, only V(n) is considered
    as an integer, because extensions to complex (which includes real) 
    V(x), V(y) have been defined for V(n) = 1, V(n) = 2, and V(n) = 3. 
    Here are some values at fixed V(n):
</p>
LS([[
LI(HYP(V(x),0,V(y)) = V(x) &deg; V(y), 
    [["zeration" (the successor function in most cases[[,]] see Rubstov's paper at the top)]])
LI(HYP(V(x),1,V(y)) = V(x) + V(y), 
    [["addition"]])
LI(HYP(V(x),2,V(y)) = V(x) V(y), 
    [["multiplication"]])
LI(HYP(V(x),3,V(y)) = V(x)SUP(V(y)) = SUP(1)V(x)SUP(V(y)) 
    = E()SUP(V(y) log(V(x))), 
    [["exponentiation"]])
LI(HYP(V(x),4,V(y)) = SUP(V(y))V(x) = SUP(V(y))V(x)SUP(1), 
    [["tetration"]])
]])
<p>
    There are also more interesting properties at fixed values
    of V(x) and V(y). Some of these properties could possibly
    be used to extend hyper-operations to real V(n):
</p>
LS([[
LI(HYP(V(x),V(n),0) = 1, 
    [[for V(n) &ge; 3]])
LI(HYP(V(x),V(n),1) = V(x), 
    [[for V(n) &ge; 2]])
LI(HYP(2,V(n),2) = 4, 
    [[for V(n) &ge; 1]])
LI(HYP(V(x),V(n),V(x)) = HYP(V(x),V(n)+1,2), 
    [[for V(n) &ge; 1]])
]])
</div>
<hr/>
<div class="darkness">
<h1>Hyper-operator Derivatives</h1>
<p>
    Since hyper-operators are all binary operators (2 arguments),
    I will be using the gradient (written "&nabla;") for the derivatives
    instead of partial derivatives with respect to each argument.
    The gradient is just a vector that denotes the partial
    derivatives with respect to all the arguments of a scalar function.
</p>
LS([[
LI([[&nabla; V(f )(V(x), V(y))
= [ &part;/&part;V(x)[[,]] &part;/&part;V(y) ] 
    V(f )(V(x), V(y))]],
    [[the gradient of a binary function]])
]])

    These are the gradients of the first few hyper-operators:

LS([[
LI([[&nabla; (HYP(V(x),1,V(y)))
= &nabla; (V(x) + V(y))
= [ 1[[,]] 1 ] ]],
    [[the gradient of addition]])
LI([[&nabla; (HYP(V(x),2,V(y)))
= &nabla; V(x)V(y)
= [ V(y)[[,]] V(x) ] ]],
    [[the gradient of multiplication]])
LI([[&nabla; (HYP(V(x),3,V(y)))
= &nabla; V(x)SUP(V(y))
= [ V(y) V(x)SUP(V(y)-1)[[,]] V(x)SUP(V(y)) log(V(x)) ] ]],
    [[the gradient of exponentiation]])
LI([[&nabla; (HYP(V(x),4,V(y)))
= &nabla; SUP(V(y))V(x)
= [ <br/>TAB()
    SUP(V(y))V(x) (SUP(V(y)-1)V(x)/V(x) 
    + log(V(x)) &part;/&part;V(x) (SUP(V(y)-1)V(x)))[[,]] <br/>TAB()
    SUP(V(y))V(x) (log(V(x)) &part;/&part;V(y) (SUP(V(y)-1)V(x))) <br/>
] ]],
    [[the gradient of tetration]])
]])
</div>
FLOW(   [[Previous Page:]], 
        [[Basics]], basic, 
        [[Next Page:]], 
        [[Tetration]], tetra)
HTMLEND()