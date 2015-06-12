HTMLBEGIN(Home of Tetration - Tables)
SITENAV()
<hr/>
<div class="darkness">
<h1>Tables of Values</h1>
<p>
    Here are tables of values for tetration using the bases 2, E(), and 10.
    These tables were auto-generated using a 5th approximation of tetration,
    so only 3-4 digits are accurate.
</p>
LS([[
LI(Table of values for <a href="txt/table-tetbin.txt">binary tetration</a>,[[(base 2)]])
LI(Table of values for <a href="txt/table-tetnat.txt">natural tetration</a>, [[(base E())]])
LI(Table of values for <a href="txt/table-tetdec.txt">decimal tetration</a>,[[(base 10)]])
]])

And here is a full representation of SUP(5)2:

LS([[
LI(Full representation of <a href="txt/table-tetbin-5.txt">2 tetra 5</a>,
    [[2^2^2^2^2]])
]])
</div>
<hr/>
<div class="darkness">
<h1>About&nbsp;&nbsp;SUP(PI())E()</h1>
<p>
    The value of SUP(PI())E() is one of the questions that started this investigation. It would
    be fitting, then, to focus on this one value now that an infinitely differentiable extension
    has been found. Here is a summary of what is known to be exact, using the approximations
    described in my <a href="paper.html">paper</a>:
</p>
LS([[
LI([[SUP(PI())E() ~ BIG(37)[[,]]BIG(149)[[,]]NUM[[,]]NUM[[.]]NUM[[]]]], [[digits known to be exact]])
LI([[SUP(PI())E() ~ BIG(37)[[,]]BIG(149)[[,]]805[[,]]NUM[[.]]NUM[[]]]], [[could be this high]])
LI([[SUP(PI())E() ~ BIG(37)[[,]]BIG(149)[[,]]795[[,]]NUM[[.]]NUM[[]]]], [[could be this low]])
]])
<p>
    The reason for these values can be seen in the values of successive approximations of
    the inverse super-logarithm, as defined in my <a href="paper.html">paper</a>. An
    exact value in this context, is defined to be the digits within the 
    decimal representation of the values of the 
    V(n)-th approximation and 2V(n)-th approximation for the same input,
    that agree when rounded to the nearest place value that would allow agreement. The rounding
    system used here, however is subjective, a 5 can either be rounded up or down, other than that
    normal half-rounding is used:
</p>
LS([[
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(10),  GR([[= BIG(37)[[,]]BIG(1)05[[,]]406[[,]]757[[.]]569]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(20),  GR([[= BIG(37)[[,]]BIG(15)5[[,]]268[[,]]624[[.]]635]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(30),  GR([[= BIG(37)[[,]]BIG(15)2[[,]]290[[,]]690[[.]]852]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(40),  GR([[= BIG(37)[[,]]BIG(15)0[[,]]849[[,]]430[[.]]350]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(50),  GR([[= BIG(37)[[,]]BIG(15)0[[,]]331[[,]]380[[.]]039]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(60),  GR([[= BIG(37)[[,]]BIG(15)0[[,]]112[[,]]554[[.]]576]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(70),  GR([[= BIG(37)[[,]]BIG(149)[[,]]986[[,]]051[[.]]500]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(80),  GR([[= BIG(37)[[,]]BIG(149)[[,]]912[[,]]712[[.]]494]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(90),  GR([[= BIG(37)[[,]]BIG(149)[[,]]874[[,]]928[[.]]208]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(100), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)52[[,]]157[[.]]218]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(110), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)35[[,]]758[[.]]346]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(120), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)25[[,]]450[[.]]226]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(130), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)19[[,]]264[[.]]787]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(140), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)14[[,]]532[[.]]744]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(150), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(8)10[[,]]983[[.]]642]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(200), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(80)4[[,]]230[[.]]685]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(300), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(80)2[[,]]030[[.]]621]]))
LI([[slog]]SUP(&minus;1)SUB(E())(PI())SUB(400), GR([[= BIG(37)[[,]]BIG(149)[[,]]BIG(80)1[[,]]852[[.]]585]]))
]])
</div>
<hr/>
HTMLEND()