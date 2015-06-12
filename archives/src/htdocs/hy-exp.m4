m4_include([htdocs/nav.m4])
ppNavHyper()
ppSep(std)
<h1>Review of Exponentiation</h1>
<p>
  Since tetration is iterated exponentials, we must have a firm understanding of exponentiation before we can begin to fully understand tetration. Exponentiation can be viewed as iterated multiples, so we will start be assuming a complete understanding of multiplication. Although there are definitions of multiplication and exponentiation to more general spaces, we will confine our discussion to multiplication and exponentiation defined over complex numbers.
</p>
<p>
  Multiplication of two complex numbers is defined as ppTexInline([exp-mul-def], [[(a + \ii b)(c + \ii d) = (ac - bd) + \ii (ad + bc)]]). Exponentiation is defined as ppV(a)ppSup(0) = 1, ppV(a)ppSup(1) = ppV(a), ppV(a)ppSup(ppV(n)+1) = ppV(a) &times; ppV(a)ppSupV(n). Using this together with complex multiplication we can evaluate exponentiation for complex bases and positive integer exponents.
  For negative exponents, we notice that ppV(a)ppSup(ppV(n))/ppV(a) = ppV(a)ppSup(ppV(n) - 1), which we can use recursively. But this depends on the knowledge of complex division, which is defined as ppTexInline([exp-div-def], [[\frac{(a + \ii b)}{(c + \ii d)} = \frac{ac + bd}{c^2 + d^2} + \ii \frac{bc - ad}{c^2 + d^2}]])
</p>
<p>
</p>
ppSep(std)
<h1>Quasigroups</h1>
<p>
  Complex numbers and complex multiplication forms an Abelian group, which allows exponentiation to have some nice properties, but the closest algebraic structure exponentiation forms with complex numbers would be a quasigroup, if it werent for the fact that roots and logarithms are not single-valued. Despite this ambiguity, there are two ways to coerce exponentiation into satisfying the quasigroup structure.
<ul>
  <li>Define a new algebraic structure called a "restricted quasigroup" (ppV(Q), ^) such that there exists left-division uniquely defined over a subset ppV(Q)ppSub(L) of ppV(Q), and a right-division uniquely defined over another subset ppV(Q)ppSub(R) of ppV(Q), which allow for the multiple-valued nature of roots and logarithms.</li>
  <li>Consider exponentiation defined over ppEm(sets) of complex numbers, such that exponentiation is a binary operation over [2]ppSupV(C). With this point of view, ([2]ppSupV(C), ^) forms a quasigroup in the strict sense of the term.</li>
</ul>
</p>
<p class="noindent">
The second option is more in line with the intuitive sense of roots and logarithms, where ppTexInline([exp-roots], [[\sqrt{4} = \pm 2]]). However, set-valued functions are more difficult to calculate with, since during computation, the traditional function must be applied multiple times to obtain the set, and anytime a single value is obtained, one must prove that there are no other values to show that the output has only one element.
</p>
<p>
Show[
Plot[Re[ExpFacApprox[x]Zeta[2x](x - 1/2)], {x, -8, 4}, PlotRange->{-1,1}, PlotStyle->Hue[2/3]],
Plot[Im[ExpFacApprox[x]Zeta[2x](x - 1/2)], {x, -8, 4}, PlotRange->{-4,4}, PlotStyle->Hue[0]]]

</p>
