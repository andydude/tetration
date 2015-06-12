<html>
<head>
	<title>Tetration and Hyper-arithmetic</title>
	<script>
		sideFrameOff();
	</script>
	<style>
		:link { color: #66CCFF;}
		:visited { color: #9999FF;}
		:active { color: #FF9999;}
		strong {
			color: white;
		}
		h1 {
			color: white;
			font-style: italic;
			font-weight: bold;
			text-align: center;
		}
		h2 {
			color: white;
			font-weight: bold;
		}
		li {
			color: white;
		}
		.darkness {
			background-color: black;
			color: silver;
			margin: 5;
			padding: 25;
		}
		.emptiness {
			background-color: black;
			color: silver;
			border-width: 0;
			padding: 0;
			margin: 0;
		}
	</style>
</head>
<body>
	<div class="darkness">
<center>
<img src="img/taux-head.png"/><br/>
<span style="text-align: center; font-style: italic; font-weight: bold; color: yellow; font-size: 72;">Tetration</span>
<table class="emptiness" style="text-align: center;" cellspacing="15"><tbody><tr><td>
<a href="main.html">Home</a></td><td>
<a href="main.html">Intro</a></td><td>
<a href="main.html">Background</a></td><td>
<a href="main.html">Code</a></td><td>
<a href="main.html">Definitions</a></td><td>
<a href="main.html">Graphs</a></td></tr><tr><td>
<a href="main.html">History</a></td><td>
<a href="main.html">Links</a></td><td>
<a href="main.html">Properties</a></td><td>
<a href="main.html">Tables</a></td><td>
<a href="main.html">Extensions</a></td><td>
<a href="main.html">Values</a>
</td></tr></tbody></table>
</center>
	</div>
	<div class="darkness">
<h1>Welcome to the Home of Tetration.</h1>

This site is about <b><i><strong>Tetration</strong></i></b>, the <strong><b><i>Hyper</i>-4</b> <b><i>Operator</i></b></strong>, or the function <sup><var>y</var></sup><var>x</var>. Right now, the only natural definition is for integer <var>y</var>. It can be extended to real <var>y</var> using
(<var>y</var> + 1) as the critical piece of a piecewise function, but it doesn't make tetration differentiable with respect to <var>y</var>. If there is a natural definition of tetration for real <var>y</var>, then it would be infinitely differentiable with respect to <var>y</var>, allowing it to be expressed as an infinite degree polynomial. Finding this function for real <var>y</var> is called the continuous extention of tetration problem. The goal or solution to this problem is to find a function <var>&Omega;</var>(<var>x</var>, 
<var>y</var>) that:

<ul>
<table class="emptiness"><tbody><tr><td>
<li><var>&Omega;</var>(<var>x</var>, -1) = 0</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
corresponds to -1st tetration,
</td></tr><tr><td>
<li><var>&Omega;</var>(<var>x</var>, <var>n</var>) =
<sup><var>n</var></sup><var>x</var>
for all <var>n</var> &isin; <b><i>N</i></b></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
corresponds to integer tetration,
</td></tr><tr><td>
<li><b><i>D</i></b><sub><var>y</var></sub><sup><var>k</var></sup><var>&Omega;</var>(<var>x</var>, <var>y</var>) exists for all <var>k</var> &isin; <b><i>N</i></b>, <var>x</var> &gt; 0, <var>y</var> &gt; -2</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
has smooth derivatives, and
</td></tr><tr><td>
<li><b><i>D</i></b><sub><var>y</var></sub><sup><var>k</var></sup><var>&Omega;</var>(<var>x</var>, <var>y</var>) &gt; 0 for all <var>k</var> &isin; <b><i>N</i></b>, <var>x</var> &gt; 1, <var>y</var> &gt; 0</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
has non-oscillating derivatives.
</td></tr></tbody></table>
</ul>
<br/><br/><br/>
<center>
Graph of: <sup><var>y</var></sup>10 (red), 
<sup><var>y</var></sup><b><i>e</i></b> (yellow), 
<sup><var>y</var></sup>2 (green), and
<sup><var>y</var></sup>(1/2) (blue).
<br/>
<img src="img/texp-bases.png"/></center>
<br/><br/><br/>
<center>
Graph of:
(<sup><var>y</var></sup><b><i>e</i></b> <sup><var>z</var></sup>) at y = {1, 3/4, 1/2, 1/4, 0, -1/4, -1/2, -3/4, -1}. 
<br/>
<img src="img/texp-aux.png"/></center>
<br/><br/>
Of the functions graphed above, only the three functions:
<ul>
<li><sup>1</sup><b><i>e</i></b> <sup><var>z</var></sup>
= exp(z)</li>
<li><sup>0</sup><b><i>e</i></b> <sup><var>z</var></sup>
= z</li>
<li><sup>-1</sup><b><i>e</i></b> <sup><var>z</var></sup>
= log(z)</li> 
</ul>

are known algebraically. The others were graphed using numerical methods, some of which are included in this site. 
	</div>
	<div class="darkness">
<h1>Notation and Language</h1>
<h2>Hyper-<var>n</var> Operator</h2>
<ul>
<table class="emptiness"><tbody><tr><td>
<li><var>x</var><sup>(<var>n</var>)</sup><var>y</var> 
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is the standard notation for <i>hyper</i>-<var>n</var> (pronounced: "<var>x</var> hyper-<var>n</var> <var>y</var>").</li>
</td></tr><tr><td>
<li><var>x</var><sup>(<var>n</var>)</sup><var>y</var> = <var>x</var>&uarr;<sup>(<var>n</var> &minus; 2)</sup><var>y</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is Knuth's up-arrow notation for <i>hyper-arithmetic</i>.
</td></tr><tr><td>
<li><var>x</var><sup>(<var>n</var>)</sup><var>y</var> = &lang;<var>x</var>, <var>y</var>, <var>n</var>&rang;</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is a subset of Bowers' array notation for <i>hyper-arithmetic</i>.
</td></tr></tbody></table>
</ul>
<h2>Tetration</h2>
<ul>
<table class="emptiness"><tbody><tr><td>
<li><sup><var>y</var></sup><var>x</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is the standard notation for <i>tetration</i> (pronounced: "<var>x</var> tetra <var>y</var>").
</td></tr><tr><td>
<li><sup><var>y</var></sup><var>x</var> = <var>x</var><sup>(4)</sup><var>y</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is the standard notation for <i>hyper</i>4 (pronounced: "<var>x</var> hyper-4 <var>y</var>").
</td></tr><tr><td>
<li><sup><var>y</var></sup><var>x</var> = <var>x</var>&uarr;&uarr;<var>y</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is Knuth's up-arrow notation for <i>tetration</i> (best for ASCII: <code>"x^^y"</code>).
</td></tr></tbody></table>
</ul>
<h2>Auxiliary Tetration</h2>
<ul>
<table class="emptiness"><tbody><tr><td>
<li><sup><var>y</var></sup><var>x</var><sup> <var>z</var></sup></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is the notation I use for <i>auxiliary tetration</i> (better for simple <var>z</var>).
</td></tr><tr><td>
<li><sup><var>y</var></sup><var>x</var><sup> <var>z</var></sup> = <sup><var>y</var></sup>(<var>x</var>, <var>z</var>) </li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is Galidakis' notation for <i>auxiliary tetration</i> (better for complicated <var>z</var>).
</td></tr><tr><td>
<li><sup><var>y</var></sup><var>x</var><sup> <var>z</var></sup> = exp<sub><var>x</var></sub><sup><var>y</var></sup>(<var>z</var>)</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is a functional notation for <i>iterated exponentials</i>.
</td></tr></tbody></table>
</ul>
Where <var>n</var> is the degree, <var>x</var> is the base, <var>y</var> is the order, and <var>z</var> is the auxiliary exponent. The inverse of <i>tetration</i> with respect to the base is called the <i>tetra-root</i>, and the inverse of <i>tetration</i> with respect to the order is called the <i>tetra-log</i>. Other pronunciations of <i>tetration</i> include: "<var>x</var> tetrated to <var>y</var>", "<var>x</var> tetrated by <var>y</var>", "the <var>y</var>-th tetration of <var>x</var>", "the <var>y</var>-th order power tower in <var>x</var>", "tetrate <var>x</var> by <var>y</var>", and let us not forget: "<var>x</var> to the <var>x</var> to the <var>x</var> ... <var>y</var> times."
	</div>
	<div class="darkness">
<h1>Definitions</h1>
<strong>Definition 1.</strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Hyper-<var>n</var> Operator
<ul>
<table class="emptiness"><tbody><tr><td>
<li><var>x</var><sup>(<var>n</var>)</sup>1 =
<var>x</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
if <var>n</var> &gt; 1
</td></tr><tr><td style="vertical-align: top;">
<li><var>x</var><sup>(<var>n</var>)</sup><var>y</var> =
<var>x</var><sup>(<var>n</var> &minus; 1)</sup>(<var>x</var><sup>(<var>n</var>)</sup>(<var>y</var> &minus; 1))</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
if <var>n</var> &gt; 0
<br/><br/>
</td></tr><tr><td>
<li><var>x</var><sup>(0)</sup><var>y</var> =
S(<var>y</var>)</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
where S(<var>y</var>) =
<var>y</var> + 1
</td></tr><tr><td>
<li><var>x</var><sup>(1)</sup><var>y</var> =
<var>x</var> + <var>y</var></li> 
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td></tr><tr><td>
<li><var>x</var><sup>(2)</sup><var>y</var> =
<var>x</var> <var>y</var></li> 
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td></tr><tr><td>
<li><var>x</var><sup>(3)</sup><var>y</var> =
<var>x</var><sup><var>y</var></sup> =
exp(<var>y </var>log(<var>x</var>))</li> 
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td></tr></tbody></table>
</ul>
<br/>
<strong>Definition 2.</strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Auxiliary Tetration (Integer)
<ul>
<table class="emptiness"><tbody><tr><td>
<li><sup>0</sup><var>x</var><sup><var>a</var></sup> =
<var>a</var></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td></tr><tr><td>
<li><sup>1</sup><var>x</var><sup><var>a</var></sup> = 
<var>x</var><sup><var>a</var></sup>
</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td></tr><tr><td>
<li><sup><var>n</var></sup><var>x</var><sup><var>a</var></sup> =
<var>x</var><sup>(<sup><var>n</var> &minus; 
1</sup><var>x</var><sup><var>a</var></sup>)</sup>
</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
if <var>n</var> &isin; <b><i>N</i></b>
</td></tr><tr><td>
<li><sup>-<var>n</var></sup><var>x</var><sup><var>a</var></sup> =
log<sub><var>x</var></sub>(<sup>1 &minus; <var>n</var></sup><var>x</var><sup><var>a</var></sup>)
</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
if <var>n</var> &isin; <b><i>N</i></b>
</td></tr></tbody></table>
</ul>
<br/>
<strong>Definition 3.</strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Tetration
<ul>
<table class="emptiness"><tbody><tr><td 
style="vertical-align: top;">
<li><sup><var>n</var></sup><var>x</var> = 
<sup><var>n</var></sup><var>x</var><sup>1</sup> = 
<var>x</var><sup>(4)</sup><var>n</var>
</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
if <var>n</var> &isin; <b><i>N</i></b>
<br/><br/>
</td></tr><tr><td>
<li><sup><var>y</var></sup><var>x</var> &#x2248; 
<sup>ceil(<var>y</var>)</sup><var>x</var><sup>(<var>y</var> &minus; ceil(<var>y</var>) + 1)</sup>
</li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
linear critical approximation
</td></tr></tbody></table>
</ul>
--------------------------------------
<ul>
<table class="emptiness"><tbody><tr><td>
<li></li>
</td><td>
</td></tr></tbody></table>
</ul>

my best approximation so far:
<br/>
<sup><var>y</var></sup><b>e</b> =
1 + (1.1)<var>y</var> + (0.3)<var>y</var><sup>2</sup> + (0.2)<var>y</var><sup>3</sup>.
	</div>
	<div class="darkness">
<h1>Properties and Values</h1>
	</div>
	<div class="darkness">
<h1>Extensions</h1>
There are several types of extension, some can be combined:

<h2>Piecewise</h2>
, where <sup><var>y</var></sup><var>x</var> = <var>y</var> + 1 if <var>y</var> &isin; (-1, 0], and other intervals can be computed with the recurrence relation <sup><var>y</var></sup><var>x</var> =
<var>x</var><sup>(<sup><var>y</var> &minus; 1</sup><var>x</var>)</sup>. 
<ul>
<table class="emptiness"><tbody><tr><td style="vertical-align: top;">
<li><sup><var>y</var></sup><var>x</var> = 
<sup>ceil(<var>y</var>)</sup><var>x</var><sup><b>&Omega;</b>(<var>x</var>, <var>y</var> &minus; ceil(<var>y</var>))</sup></li>
</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
is a piecewise extension with respect to the order on the interval (-1, 0],
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
where ceil(<var>y</var>) is the ceiling function, which is equivalent to:
<br/>
</td></tr><tr><td>&nbsp;</td><td>
<ul>
<table class="emptiness"><tbody><tr><td>
<li><sup><var>y</var></sup><var>x</var> = 
log<sub><var>x</var></sub>(<sup><var>y</var> + 1</sup><var>x</var>)</li>
</td><td>&nb
grestore
grestore
0 setgray
0.333333 setgray
gsave
0 0 144 144 rectclip
[1 0 0 -1 0 144] concat
grestore
grestore
%%Trailer
%%DocumentFonts: Helvetica
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        âPNG

   IHDR   ô   ô    7«f  ÀIDATxúÌõArÉ0wS˛ˇó7áHéãHéõU2}0'†—Åº(+6Â„jÅ)6„Ïkvãààºÿ‚HE7páÊâªÓì;ßi3éÕ86„ÿåc3éÕ86„‹4á…@ÔxØ†1Àj?©µYDD59ëö¶üU~Õ$îÅä⁄¨"õñ™…tiVÎg≤f”§ŸgÖY∫<ˇ˙xV}<ék≤;‡q#aﬂ4m∆±«fõql∆±«fõqNº”æ©Hu¬ÏL›âÔ≤qö6„ÿåc3éÕ86„ÿåc3éÕ86„åÁ ïò°ŸΩ\),pOø]˚|ÓT˝ +x°T;ÏgΩ\π8“ä»™ö\˝∏ÕJYû†ˇ…Ifi÷≤v?~Ô/$Õ∑¸?–bú¶y—xñáÌÄaöµÌxˆ`µ»Ø_{ÕG·˜à