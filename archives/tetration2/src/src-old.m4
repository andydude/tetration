m4_changecom($$$)m4_dnl
m4_changequote([[,]])m4_dnl
m4_define(THEDATE, [~datestring~])m4_dnl
m4_define(V, [[<var>$1</var>]])m4_dnl
m4_define(TA, [[<sup>$1</sup>$2<sup>$3</sup>]])m4_dnl
m4_define(HYP, [[$1<sup>($2)</sup>$3]])m4_dnl
m4_define(SUP, [[<sup>$1</sup>]])m4_dnl
m4_define(SUB, [[<sub>$1</sub>]])m4_dnl
m4_define(SBP, [[<sub>$1</sub><sup>$2</sup>]])m4_dnl
m4_define(EM, [[<em>$1</em>]])m4_dnl
m4_define(BIG, [[<strong>$1</strong>]])m4_dnl
m4_define(E, [[<b><i>e</i></b>]])m4_dnl
m4_define(IU, [[<b><i>i</i></b>]])m4_dnl
m4_define(PI, [[<b><i>&pi;</i></b>]])m4_dnl
m4_define(DOP, [[<b><i>D</i></b>]])m4_dnl
m4_define(CNT, [[<center>$1</center>]])m4_dnl
m4_define(NUM, [[<span style="color: gray;">###</span>]])m4_dnl
m4_define(GR, [[<span style="color: gray;">$1</span>]])m4_dnl
m4_define(TAB, [[<pre style="display: inline;">    </pre>]])m4_dnl
m4_define(GRPH, [[<div tetra.graph="$1, $2, $3">$4</div>]])m4_dnl
m4_define(LS, [[
<div tetra.list="true">
$1
</div>]])m4_dnl
m4_define(LI, [[
    <div>
        <div>
            $1
        </div>
        <div>
            $2
        </div>
    </div>
]])m4_dnl
m4_define(GCONV, [[m4_translit(m4_translit($1, [[A-Z]], [[a-z]]), [[-\ \_]], [[]])]])m4_dnl
m4_define(GLINK, [[<gloss>$1</gloss>]])m4_dnl
m4_define(GI, [[
    <div>
        <div>
            BIG(<glossdt>$1</glossdt>)
        </div>
        <div>
            <glossdd>$2</glossdd>
        </div>
    </div>
]])m4_dnl
m4_define(DEF, [[
<strong>Definition $1.</strong>
TAB()$2
TAB()$3]])m4_dnl
m4_define(HTMLBEGIN,[[<?xml version="1.0"?>
<!DOCTYPE html PUBLIC 
    "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html __import__="tetra, site">
    <head>
       <title>$1</title>
       <link rel="stylesheet" href="style.css" type="text/css"/>
    </head>
    <body style="background-color: black; color: silver;">
        <div tetra.sitehead="true"/>
]])m4_dnl
m4_define(HTMLEND,[[
        <div tetra.sitefoot="true"/>
    </body>
</html>]])m4_dnl
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
m4_define(SITENAV,[[]])m4_dnl
