m4_include([htdocs/nav.m4])
ppNavTower()
ppSep(std)
<h1>Height Density Problem</h1>
<p>
  There is a problem posted on a wall of the math club at the 
  <a href="http://www.umd.edu/">University of Maryland</a>,
  by the author ppEm(Andrew Snowden). He apparently teaches
  both there and at <a href="http://www.princeton.edu/">Princeton</a>,
  and poses many interesting problems in mathematics.
  The problem set was simply called ppEm(Some More Problems), and contained
  problems from algebra and number theory to real and complex analysis.
  The second problem posted cought my attention, as it related
  to nested exponentials, so I will reproduce it here:
</p>
<div class="quote">
<p>
  A natural number ppV(n) may be factored as ppTexInline([tw-prmfac-prmfac], [n = p_1^{a_1} p_2^{a_2} \cdots p_n^{a_n}]) where the ppTexInline([tw-prmfac-pn], [p_n]) are distinct prime numbers and ppTexInline([tw-prmfac-an], [a_n]) are natural numbers. Since the ppTexInline([tw-prmfac-an], [a_n]) are natural numbers, they may be factored in such a manner as well. This process may be continued, building a "factorization tree" until all the top numbers are 1. Thus any question that can be asked of trees (i.e. the height of a tree, the number of nodes in a tree, etc.) may be asked of our natural number ppV(n). This problem is about the height of ppV(n) which we denote ppV(h)(ppV(n)). Define:
  ppTexCenter([tw-prmfac-def], [D_n = \lim_{N \rightarrow \infty} \frac{1}{N} |\{k \le N \text{ : } h(k) \ge n \}|])
  ppTexInline([tw-prmfac-dn], [D_n]) is sort of the density of numbers with height at least ppV(n). It is obvious that ppTexInline([tw-prmfac-d11], [D_1 = 1]) since all numbers have height at least 1.
</p>
<ol>
  <li>Show that 
  ppTexCenter([tw-prmfac-show], [\frac{1}{2} < ({}^{n}2) D_n \le 3])</li>
  <li>Let ppV(a) be the average height of a natural number (i.e. if you were to pick many numbers at random their height would average out to ppV(a)). Using the previous part and other methods, give bounds on ppV(a). The best bounds [[Andrew Snowden has]] are
  <center>1.42333 &lt; ppV(a) &lt; 1.4618</center></li>
</ol>
</div>
m4_dnl ppSep(std)
m4_dnl <h1>Prime Factorization</h1>
m4_dnl <p>
m4_dnl The reason why this problem relates to tetration and towers in general is not just because the expression 2-tetra-ppV(n) is used within the problem, but also because towers themselves are a special case of semi-modules over semi-rings.
m4_dnl This naturally leads the the questions: what is a semi-module? what is a semi-ring? Semi-rings are also known as rings without identity. Semi-modules are less common, and hard to find in the literature.
m4_dnl </p>
m4_dnl <p>
m4_dnl   A ppEm(module) is like a vector space over a ring rather than a field. A ppEm(semi-module) is like a module, except its ???
m4_dnl </p>
