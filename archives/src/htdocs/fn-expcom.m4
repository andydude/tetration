m4_include([htdocs/nav.m4])
ppNavFunc()
ppSep(std)
<h1>Exponential Commutator</h1>
<p>
  The function ppV(H)ppSup(-1)(ppV(x)) = ppV(x)ppSup(1/ppV(x)) is the inverse function of the ppGloss(infinite tetrate). So naturally, this means that over some domain, the composition ppTexInline([ec-comp-all], [[H^{-1} \circ H]]) will be equal to the identity function, and this domain is all real numbers (for the principal branch of the ppGloss(infinite tetrate)). However, the other composition that should also be the identity is not. Namely ppTexInline([ec-comp-some], [[H \circ H^{-1}]]) is only equal to the identity function for ppV(x) &lt; ppE(), which means this composition yields a value that is different from the identity function for values ppV(x) &gt; ppE(). This can be used to find answers to the age old question of what are the solutions of:
  ppTexCenter([ec-formal], [[
  EC(x) = \{ y \text{ where } x^y = y^x \text{ and } x \ne y \}
  ]])
</p>
<p>
  This can be written in ppGloss(closed form) with the use of the ppGloss(infinite tetrate) ppV(H)(ppV(x)) as follows:
  ppTexCenter([ec-closed], [[
EC(x) = \begin{cases}
H_{-1}(\sqrt[x]{x})& \text{if }x < \boldsymbol{e}, \\
H_{0}(\sqrt[x]{x}) & \text{if }x > \boldsymbol{e}.
\end{cases}
  ]])
but it is debatable whether or not ppE() can be included in the definition. If it is included, then the function is continuous, if it is not included, then the function is discontinuous, but satisfies the more formal definition.
</p>
<p>
Using this definition of the exponential commutator, we can find a sequence of derivatives. From these we can form the Taylor series at ppV(x) = ppE():
ppTexCenter([ec-taylor], [[
EC(x) 
& = \ee - (x-\ee) 
+ \frac{5}{3\ee} (x-\ee)^2 
- \frac{25}{9\ee^2} (x-\ee)^3
+ \frac{1243}{270\ee^3} (x-\ee)^4 \\\notag 
&- \frac{1229}{162\ee^4} (x-\ee)^5 
 + \frac{14107}{1134\ee^5} (x-\ee)^6 
- \frac{575927}{28350\ee^6} (x-\ee)^7 \\\notag 
& + \frac{4217764}{127575\ee^7} (x-\ee)^8 
- \frac{1408003}{26244\ee^8} (x-\ee)^9 
+ \cdots
]])

ppTexCenter([ec-at2-taylor], [[
EC(x) 
& = 4 
+ \frac{4(\log(2)-1)}{2\log(2)-1}(x-2) 
- \frac{2\log(2)^2 - 6\log(2) + 3}{(2\log(2)-1)^3} (x-2)^2 \\\notag
& + \frac{8\log(2)^4 - 16 \log(2)^3 - 36 \log(2)^2 + 60 \log(2) - 21}{6(2\log(2)-1)^5} (x-2)^3
+ \cdots
]])
ppTexCenter([ec-at4-taylor], [[
EC(x) 
& = 2
+ \frac{\log(2)-1}{4(\log(2)-1}(x-4) 
+ \frac{2\log(2)^2 - 6\log(2) + 3}{64(\log(2)-1)^3} (x-4)^2 \\\notag
& - \frac{4\log(2)^4 - 16 \log(2)^3 + 18 \log(2)^2 - 15 \log(2) + 6}{1536(\log(2)-1)^5} (x-4)^3
+ \cdots
]])
</p>
<p>
Using the analytic definition again, we find that the first derivative is:
ppTexCenter([ec-deriv], [
EC\prime(x) 
= \frac{EC(x)^2 (1 - \log(x))}{x^2 (1 - EC(x) \log(x^{1/x}))}
])
which we can use repeatedly to find series expansions about any point. This along with the fact that ppIt(EC)(ppIt(x)) is its own inverse function, is all you need to solve for the coefficients of this series.
</p>
