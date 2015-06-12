m4_include([htdocs/nav.m4])
ppNavFunc()
ppSep(std)
<h1>Self-root (ppV(x)ppSup(1/ppV(x)))</h1>
<p>
  The ppEm([self-root]) function is a simple function related to tetration. 
  It is the inverse function of the ppGloss([infinite tetrate]), and thus
  it corresponds to the infinite ppGloss([super-root]).
</p>
<p>
  
</p>
ppSep(std)
<h1>Series for ppV(x)ppSup(1/ppV(x))</h1>
<p>
Since ppV(x)ppSup(1/ppV(x)) is such a simple function, we can expand it directly
using the series expansion of the exponential function:

ppTexCenter([xrootx-simple], [[x^{1/x} = 
\ee^{\log(x)/x} = \sum_{k=0}^{\infty} \frac{\log(x)^k x^{-k}}{k!}]])

The direct function gives the exponential coefficients (1, 1, -2, 3, 4, -90, 786, ...) or ppA(x)

ppTexCenter([xrootx-taylor], [[x^{1/x} = 
\sum_{k=0}^{\infty}\frac{(x-1)^k}{k!}
\sum_{j=0}^{k}\stirfirst{k}{j}
\sum_{i=0}^{j}\binom{j}{i}(-i)^{(j-i)}
]])

If we were to substitute ppV(x) with ppE()ppSupV(x) expanding about 0 gives the exponential coefficients (1, 1, -1, -2, 9, -4, -95, 414, ...) or ppA(x).

ppTexCenter([xrootx-puiseux], [[x^{1/x} = 
\sum_{k=0}^{\infty}\frac{\log(x)^k}{k!}
\sum_{j=0}^{k}\binom{k}{j}(-j)^{(k-j)}
]])


</p>
