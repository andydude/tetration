m4_changecom($$$)m4_dnl
m4_changequote([[,]])m4_dnl
m4_define(WSDIR, [[/var/www/tetration]])m4_dnl
m4_define(THEDATE, 2006-02-15)m4_dnl
m4_define(V, [[<var>$1</var>]])m4_dnl
m4_define(TA, [[<sup>$1</sup>$2<sup>$3</sup>]])m4_dnl
m4_define(HYP, [[$1<sup>($2)</sup>$3]])m4_dnl
m4_define(SUP, [[<sup>$1</sup>]])m4_dnl
m4_define(SUB, [[<sub>$1</sub>]])m4_dnl
m4_define(SBP, [[<sub><sub><table cellspacing="0" cellpadding="0" border="0" 
class="subsup"><tr><td>$1</td><tr><tr><td>$2</td><tr></table></sub></sub>]])m4_dnl
m4_define(EM, [[<b><i>$1</i></b>]])m4_dnl
m4_define(BIG, [[<span style="color:white;"><b>$1</b></span>]])m4_dnl
m4_define(CC, [[&copy;]])m4_dnl
m4_define(E, [[<b><i>e</i></b>]])m4_dnl
m4_define(IU, [[<b><i>i</i></b>]])m4_dnl
m4_define(PI, [[<b><i>&pi;</i></b>]])m4_dnl
m4_define(DOP, [[<b><i>D</i></b>]])m4_dnl
m4_define(CNT, [[<center>$1</center>]])m4_dnl
m4_define(NUM, [[<span style="color: gray;">###</span>]])m4_dnl
m4_define(GR, [[<span style="color: gray;">$1</span>]])m4_dnl
m4_define(TAB, [[&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]])m4_dnl
m4_define(GRPH, [[<center>
<a href="img/$3"><img width="$1" height="$2" src="img/$3"/></a>
<br/>
$4
</center>
<br/><br/>]])m4_dnl
m4_define(TEXCENTER, [[
    m4_esyscmd([[echo ./autopng '"$1"' '"]]m4_patsubst([[\begin{align}\notag $2 \end{align}]], [[\\]], [[\\\\]])[["' >> "]]WSDIR()[[/src/src-tex/autopng-script.sh"]])
    <center>
	<img src="img/auto/$1.png" alt="$2"/>
    </center>]])m4_dnl
m4_define(LS, [[
	<ul>
	<table class="emptiness" cellspacing="15">
	<tbody>
$1
	</tbody>
	</table>
	</ul>]])m4_dnl
m4_define(LI, [[
	<tr>
		<td style="vertical-align: top;">
			<li>$1
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		</td>
		<td style="vertical-align: top;">
$2
		</td>
	</tr>]])m4_dnl
m4_define(GCONV, [[m4_translit(m4_translit($1, [[A-Z]], [[a-z]]), 
[[-\ \_]], [[]])]])m4_dnl
m4_define(GLINK, [[<a href="gloss.html#GCONV($1)">$1</a>]])m4_dnl
m4_define(GI, [[GIEND()
	<tr>
		<td style="vertical-align: top;">
		    <a name="GCONV($1)" />
			<li>BIG($1)
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		</td>
		<td style="vertical-align: top;">
$2
		</td>
	</tr>]])m4_dnl
m4_define(GIEND, [[
	<tr><td colspan="2" style="background-color: white; 
	height: 1px; margin: 0px; padding: 0px; border-width: 0px;"
	></td></tr>]])m4_dnl
m4_define(DEF, [[
<strong>Definition $1.</strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$2
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$3]])m4_dnl
m4_define(HTMLBEGIN,[[<html>
<head>
	<title>$1</title>
	<link rel="stylesheet" href="style.css" type="text/css" />
	<script>
		sideFrameOff();
	</script>
</head>
<body style="background-color:#111;color:silver;">]])m4_dnl
m4_define(HTMLEND,[[
<div class="lightness">
Visited: <ISML TYPE="counter"> times, last updated: THEDATE(), by: Andrew Robbins, contact: and_j_rob(at)yahoo(dot)com
</div>
</body>
</html>
<!--]])m4_dnl
m4_define(FLOW, [[
<hr/>
<div class="darkness" style="padding: 10px;">
<table class="middleone" cellspacing="5" style="width: 100%;">
<tr style="width: 100%;"><td style="text-align: left; width: 50%;">
$1 <a href="$3.html">$2</a>
</td><td style="text-align: center; width: auto;">
&nbsp;
</td><td style="text-align: right; width: 50%;">
$4 <a href="$6.html">$5</a>
</td></tr>
</table>
</div>
<hr/>
]])m4_dnl
m4_define(SITENAV,[[
<div class="darkness" style="text-align: center;">
	<img src="img/taux-head.png"/>
	<br/>
	<span style="text-align: center; font-style: italic; font-weight: bold; color: yellow; font-size: 72;">Tetration</span>

m4_dnl<table class="middleone" 
m4_dnl    style="text-align: center;" cellspacing="15">
m4_dnl<tbody>
m4_dnl<tr><td width="14%">&nbsp;</td><td width="14%">
m4_dnl    <a href="main.html">Main</a></td><td width="14%">
m4_dnl    <a href="ident.html">Identities</a></td><td width="16%">
m4_dnl    <a href="code.html">Code</a></td><td width="14%">
m4_dnl    <a href="graph.html">Graphs</a></td><td width="14%">
m4_dnl    <a href="paper.html">Paper</a>
m4_dnl    </td><td width="14%">&nbsp;</td></tr>
m4_dnl    <tr><td width="14%">&nbsp;</td><td width="14%">
m4_dnl    <a href="hist.html">History</a></td><td width="14%">
m4_dnl    <a href="defs.html">Definitions</a></td><td width="16%">
m4_dnl    <a href="error.html">Error</a></td><td width="14%">
m4_dnl    <a href="tabs.html">Tables</a></td><td width="14%">
m4_dnl    <a href="links.html">Links</a>
m4_dnl</td><td width="14%">&nbsp;</td></tr>
m4_dnl</tbody>
m4_dnl</table>

<br/><br/>

<center>
BIG(Featured Pages:)&nbsp;
<a href="appl.html">Applications</a> &nbsp;|&nbsp;
<a href="chaos.html">Chaos</a> &nbsp;|&nbsp;
<a href="exfac.html">Exp. Factorial</a> &nbsp;|&nbsp;
<a href="funeq.html">Functional Eq.</a> &nbsp;|&nbsp;
<a href="hist.html">History</a> &nbsp;|&nbsp;
<a href="itern.html">Iteration</a> 
</center>

<br/>

<center>
Reference:&nbsp;
<a href="defs.html">Definitions</a> &nbsp;|&nbsp;
<a href="ident.html">Identities</a> &nbsp;|&nbsp;
<a href="mthds.html">Methods</a> &nbsp;|&nbsp;
<a href="code.html">Code</a> &nbsp;|&nbsp;
<a href="tabs.html">Tables</a> &nbsp;|&nbsp;
<a href="graph.html">Graphs</a> &nbsp;|&nbsp;
<a href="gloss.html">Glossary</a> &nbsp;|&nbsp;
<a href="links.html">Links</a>
</center>

<br/>

<center>
Discussion:&nbsp;
<a href="index.html">Welcome</a> =&gt;
<a href="basic.html">Basics</a> =&gt;
<a href="hyper.html">Hyperops</a> =&gt;
<a href="tetra.html">Tetration</a> =&gt;
<a href="slog.html">Super-log</a> =&gt;
<a href="sroot.html">Super-root</a> =&gt;
<a href="paper.html">Papers</a>
</center>

</div>
]])m4_dnl
m4_dnl		<a href="hist.html">History</a></td><td>
m4_dnl		<a href="graph.html">Graphs</a></td><td>
m4_dnl		<a href="appl.html">Application</a></td><td width="14%">
m4_dnl		<a href="fict.html">Fictional</a></td><td width="14%">

