m4_dnl
m4_dnl ppA(text)
m4_dnl
m4_define([ppA], [(<a href="http://www.research.att.com/~njas/sequences/A$1">A$1</a>)])m4_dnl
m4_dnl
m4_dnl ppUC(text)
m4_dnl
m4_define([ppUC], [(<span style="color: orange;">under construction</span>)])m4_dnl
m4_dnl
m4_dnl ppTet(base, height)
m4_dnl
m4_define([ppTet], [$1<sup>$2</sup>])m4_dnl
m4_dnl
m4_dnl ppTaux(base, height)
m4_dnl
m4_define([ppTaux], [exp<table border="0" class="stack"><tr><td>$2</td></tr><tr><td>$1</td></tr></table>($3)])m4_dnl
m4_dnl m4_define([ppTaux], [exp<sub>$1</sub><sup>$2</sup>($3)])m4_dnl
m4_dnl
m4_dnl ppNew(text)
m4_dnl
m4_define([ppNew], [(<span style="color: red;">NEW!</span>)])m4_dnl
m4_dnl
m4_dnl ppGlossConv(text)
m4_dnl
m4_define([ppGlossConv], 
  [m4_translit(m4_translit($1, [[A-Z]], [[a-z]]), [[\-\ \_]], [[]])])m4_dnl
m4_dnl
m4_dnl ppGloss(text)
m4_dnl
m4_define([ppGloss], [<a href="gloss.html#]
[ppGlossConv($1)">$1</a>])m4_dnl
m4_dnl
m4_dnl ppGlossDef(term, text)
m4_dnl
m4_define([ppGlossDef], [ppGlossEnd()
	<tr>
		<td style="vertical-align: top;">
		    <a name="ppGlossConv($1)" />
			<li>ppEm($1)
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
		</td>
		<td style="vertical-align: top;">
$2
		</td>
	</tr>])m4_dnl
m4_dnl
m4_dnl ppGlossEnd()
m4_dnl
m4_define([ppGlossEnd], [
	<tr><td colspan="2" style="background-color: #333333; 
	height: 1px; margin: 0px; padding: 0px; border-width: 0px;"
	></td></tr>])m4_dnl
m4_dnl
m4_dnl ppGlossWrap(glossary)
m4_dnl
m4_define([ppGlossWrap], [
<ul>
<table class="gloss" border="0px" cellspacing="10px" cellpadding="10px">
  <tbody>
  $1
  ppGlossEnd()
	</tbody>
</table>
</ul>
])m4_dnl
m4_dnl
m4_dnl ppRef(text)
m4_dnl
m4_define([ppRef], [(<a href="links.html#]
[ppGlossConv($1)">$1</a>)])m4_dnl
m4_dnl
m4_dnl ppReference(refid, authors, text)
m4_dnl
m4_define([ppReference], [ppReferenceEnd()
	<tr>
		<td style="vertical-align: top;">
		    <a name="ppGlossConv($1)" />
			<li>($1)</li>
		</td>
		<td style="vertical-align: top;">
		ppEm($2)
		</td>
		<td style="vertical-align: top;">
$3
		</td>
	</tr>])m4_dnl
m4_dnl
m4_dnl ppReferenceEnd()
m4_dnl
m4_define([ppReferenceEnd], [
	<tr><td colspan="3" style="background-color: #333333; 
	height: 1px; margin: 0px; padding: 0px; border-width: 0px;"
	></td></tr>])m4_dnl
m4_dnl
m4_dnl ppReferenceWrap(references)
m4_dnl
m4_define([ppReferenceWrap], [
<p>
<ul>
<table class="gloss" border="0px" cellspacing="10px" cellpadding="10px">
  <tbody>
  $1
  ppReferenceEnd()
	</tbody>
</table>
</ul>
</p>
])m4_dnl
m4_dnl
m4_dnl ppTab()
m4_dnl
m4_define([ppTab], [&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;])m4_dnl
m4_dnl
m4_dnl ppWikipedia(page, desc)
m4_dnl
m4_define([ppWikipedia], [<a href="http://en.wikipedia.org/wiki/$1">Wikipedia$2</a>])m4_dnl
m4_dnl
m4_dnl ppMathWorld(page, desc)
m4_dnl
m4_define([ppMathWorld], [<a href="http://mathworld.wolfram.com/$1.html">MathWorld$2</a>])m4_dnl
m4_dnl
m4_dnl ppPlanetMath(page, desc)
m4_dnl
m4_define([ppPlanetMath], [<a href="http://planetmath.org/encyclopedia/$1.html">PlanetMath$2</a>])m4_dnl
m4_dnl
m4_dnl ppNavSorry(text)
m4_dnl
m4_define([ppNavSorry], [
<h1>Welcome to the ppEm(<span style="color:yellow;">NEW</span>) Home of Tetration</h1>
<p>
  You must have reached this page from an old link. 
  This entire website has undergone extensive revision and updating.
  Many of the pages that were on the old site have been moved or reclassified.
  Most of the material that was on the old site can still be obtained from the menu above.
  $1
  Please update your links. Thank you.
</p>
])m4_dnl
m4_dnl
m4_dnl ppNavSep(text)
m4_dnl
m4_define([ppNavSep], [&nbsp;|&nbsp;])m4_dnl
m4_dnl
m4_dnl ppNavHome(text)
m4_dnl
m4_define([ppNavHome], [
<center>
  <div class="nav">
  Home pages :
  <a href="about.html">About Me</a> ppNavSep()
  <a href="appli.html">Applications</a> ppNavSep()
  <a href="ident.html">Identities</a> ppNavSep()
  <a href="paper.html">Papers</a> ppNavSep()
  <a href="graph.html">Gallery</a> ppNavSep()
  <a href="gloss.html">Glossary</a> ppNavSep()
  <a href="links.html">References</a>
m4_dnl  ppNavSep()
m4_dnl   <a href="visual.xhtml">Visualizer</a> ppNew()
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavHyper(text)
m4_dnl
m4_define([ppNavHyper], [
<center>
  <div class="nav">
  Hyperop pages ppUC() :
m4_dnl  <a href="hy-zer.html">Zeration</a> ppNavSep()
m4_dnl  <a href="hy-robb.html">Robbins</a> ppNavSep()
m4_dnl  <a href="hy-frap.html">Frappier</a> ppNavSep()
m4_dnl  <a href="hy-extn.html">Extensions</a> ppNavSep()
  <a href="hy-exp.html">Exponentiation</a> ppNavSep()
  <a href="hist.html">History</a>
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavFunc(text)
m4_dnl
m4_define([ppNavFunc], [
<center>
  <div class="nav">
  Function pages ppUC() :
  <a href="fn-sqtow.html">ppV(x)ppSupV(x)</a> ppNavSep()
  <a href="fn-rctow.html">ppV(x)ppSup(1/ppV(x))</a> ppNavSep()
m4_dnl  <a href="fn-decexp.html">ppE()ppSupV(x)-1</a> ppNavSep()
m4_dnl  <a href="fn-prdexp.html">ppV(x)ppE()ppSupV(x)</a> ppNavSep()
m4_dnl  <a href="fn-lmbrt.html">ppV(W)(ppV(x))</a> ppNavSep()
m4_dnl  <a href="fn-intow.html">ppSup(ppInf())ppV(x)</a> ppNavSep()
m4_dnl  <a href="fn-expcom.html">ppV(x)ppSupV(y)=ppV(y)ppSupV(x)</a> ppNavSep()
m4_dnl  <a href="fn-expfac.html">Exponential Factorial</a> ppNavSep()
  <a href="fn-tconj.html">Topological Conjugacy</a> 
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavIter(text)
m4_dnl
m4_define([ppNavIter], [
<center>
  <div class="nav">
  Iteration pages ppUC() :
m4_dnl  <a href="it-abel.html">Abel Function</a> ppNavSep()
m4_dnl  <a href="it-abel.html">Schr&ouml;der Function</a> ppNavSep()
m4_dnl  <a href="it-abel.html">B&ouml;ttcher Function</a> ppNavSep()
m4_dnl  <a href="it-abel.html">Julia Function</a> ppNavSep()
m4_dnl  <a href="it-bell.html">Abel Matrix</a> ppNavSep()
m4_dnl  <a href="it-bell.html">Bell Matrix</a> ppNavSep()
m4_dnl  <a href="it-bell.html">Carleman Matrix</a> ppNavSep()
m4_dnl  <a href="itern.html">Chaos</a> ppNavSep()
m4_dnl  <a href="it-dynsys.html">Dynamical Systems</a> ppNavSep()
m4_dnl  <a href="it-funceq.html">Functional Equations</a> ppNavSep()
  <a href="it-methds.html">Methods</a>
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavTetra(text)
m4_dnl
m4_define([ppNavTetra], [
<center>
  <div class="nav">
  Tetration pages :
  m4_dnl <a href="te-defs.html">Definitions</a> ppNavSep()
  <a href="te-spow.html">Tetrates</a> ppNavSep()
  <a href="te-sexp.html">Tetrationals</a> ppNavSep()
  <a href="te-srt.html">Super-roots</a> ppNavSep()
  <a href="te-slog.html">Super-logs</a> ppNavSep()
  <a href="te-methds.html">Methods</a>
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavTower(text)
m4_dnl
m4_define([ppNavTower], [
<center>
  <div class="nav">
  Tower pages :
  m4_dnl <a href="tw-defs.html">Definitions</a> ppNavSep()
  m4_dnl <a href="tw-nstexp.html">Nested Exponentials</a> ppNavSep()
  <a href="tw-prmfac.html">Prime Factorization</a> ppNavSep()
  <a href="tw-serexp.html">Series Expansions</a> 
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppNavStorage(text)
m4_dnl
m4_define([ppNavStorage], [
<center>
  <div class="nav">
  Storage pages :
  <a href="sg-level.html">Level-Index</a> ppNavSep()
  <a href="sg-tetra.html">Tetrational</a> ppNavSep()
  <a href="sg-cmpst.html">Composite</a> ppNavSep()
  </div>
</center>
])m4_dnl
m4_dnl
m4_dnl ppIt(text)
m4_dnl
m4_define([ppIt], [<i>$1</i>])m4_dnl
m4_dnl
m4_dnl ppLsSep()
m4_dnl
m4_define([ppLsSep], [<br/><br/>])m4_dnl
m4_dnl
m4_dnl ppV(text)
m4_dnl
m4_define([ppV], [<var>$1</var>])m4_dnl

<center class="logo">
  <img src="img/tetra-logo.png" alt="Graph"/>
  <br/>
  <h1>Home of Tetration</h1>
  <br/>
  <div class="nav"> 
  <a href="index.html">Home</a> ppNavSep()
  <a href="hyper.html">Hyperops</a> ppNavSep()
  <a href="funct.html">Functions</a> ppNavSep()
  <a href="itern.html">Iteration</a> ppNavSep()
  <a href="tetra.html">Tetration</a> ppNavSep()
  <a href="tower.html">Towers</a>
m4_dnl ppNavSep()
m4_dnl  <a href="storg.html">Storage</a>
  </div>

</center>
