HTMLBEGIN(Home of Tetration - Graphs)
SITENAV()
<hr/>
<div class="darkness">
<h1>About the Graphs</h1>
<br/>
GRPH(415, 424, taux-9.png, [[SUP(V(y))E()SUP(V(a)) for V(y) in {
<span style="color: #F33;">1</span>[[,]]
<span style="color: #C93;">3/4</span>[[,]]
<span style="color: #CF6;">1/2</span>[[,]]
<span style="color: #6F3;">1/4</span>[[,]]
<span style="color: #3F6;">0</span>[[,]]
<span style="color: #3FF;">-1/4</span>[[,]]
<span style="color: #06F;">-1/2</span>[[,]]
<span style="color: #33C;">-3/4</span>[[,]]
<span style="color: #C3F;">-1</span>
}]])
<p>
    Most graphs, like the one above, will have color coded keys indicating
    what the different lines on the graph are. 
    It has taken quite some time to prepare these. When I first
    started this website, I did not have a robust extension of tetration.
    It was partially due to my struggle in creating such graphs
    that I stumbled upon the Abel linearization. Once I found how
    to apply it to tetration, more attention went to developing 
    it rather than doing these graphs, which was what it was for!
    Now that I have developed a way to produce these graphs, 
    here are a few graphs that use my extension of tetraiton.
    I hope you enjoy these graphs as much as I do.
</p>
</div>
<hr/>
<div class="darkness">
<h1>Graphs</h1>
<br/>
<h2>Tetration</h2>
GRPH(169, 400, grph_nat_tet.png, [[V(z) = SUP(V(y))E()]])
GRPH(169, 400, grph_drvs_nat_tet.png, [[V(z) = DOP()SUP(V(n))SUB(V(y)) (SUP(V(y))E()) 
for V(n) in {
<span style="color: #F00;">0</span>[[,]]
<span style="color: #0F0;">1</span>[[,]]
<span style="color: #06F;">2</span>
}]])
GRPH(212, 402, grph_drvs_bin_tet.png, [[V(z) = DOP()SUP(V(n))SUB(V(y)) (SUP(V(y))2 
for V(n) in {
<span style="color: #F00;">0</span>[[,]]
<span style="color: #0F0;">1</span>[[,]]
<span style="color: #06F;">2</span>
}]])
<br/>
<h2>Super-logarithm</h2>
GRPH(401, 153, grph_nat_slog.png, [[V(y) = [[slog]]SUB(E())(V(z))]])
GRPH(401, 153, grph_drvs_nat_slog.png, [[V(y) = DOP()SUP(V(n))SUB(V(z)) 
[[slog]]SUB(E())(V(z))
for V(n) in {
<span style="color: #F00;">0</span>[[,]]
<span style="color: #0F0;">1</span>[[,]]
<span style="color: #06F;">2</span>
}]])
GRPH(401, 191, grph_drvs_bin_slog.png, [[V(y) = DOP()SUP(V(n))SUB(V(z)) 
[[slog]]SUB(2)(V(z))
for V(n) in {
<span style="color: #F00;">0</span>[[,]]
<span style="color: #0F0;">1</span>[[,]]
<span style="color: #06F;">2</span>
}]])

m4_dnl ############### NOTE! &infin; isn't working so using 'oo'

<h2>Other</h2>
GRPH(401, 248, grph_hyperpower.png, [[V(z) = SUP(oo)V(x)]])

GRPH(401, 248, grph_powertower.png, [[V(z) = SUP(V(y))V(x) for V(y) in {
<span style="color: #F00;">0</span>[[,]]
<span style="color: #FF0;">1</span>[[,]]
<span style="color: #0F0;">2</span>[[,]]
<span style="color: #06F;">3</span>[[,]]
<span style="color: #F0F;">4</span>
}]])

GRPH(401, 248, grph_b_n_d_tet.png, [[V(z) = SUP(V(y))V(x)
for V(x) in {
<span style="color: #F00;">2</span>[[,]]
<span style="color: #0F0;">E()</span>[[,]]
<span style="color: #06F;">10</span>
}]])

GRPH(401, 382, grph_iterexp.png, [[V(z) = SUP(V(y))E()SUP(V(a)) for V(y) in {
<span style="color: #F00;">1</span>[[,]]
<span style="color: #FF0;">1/2</span>[[,]]
<span style="color: #0F0;">0</span>[[,]]
<span style="color: #06F;">-1/2</span>[[,]]
<span style="color: #F0F;">-1</span>
}]])
</div>
<hr/>
HTMLEND()