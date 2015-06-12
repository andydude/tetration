m4_include([htdocs/nav.m4])
ppNavFunc()
ppSep(std)
<h1>Lambert ppV(W) Function</h1>
<p>
</p>
ppSep(std)
<h1>Series for ppV(W)(ppV(x))</h1>
<p>

Although this is one of the simplest cases of ppGloss(tetration), it is a non-trivial case, since the immediate answer to a series expansion for ppV(x)ppSupV(x) would be:
ppTexCenter([lambert-taylor], [[W(x) = \sum_{k=1}^{\infty} \frac{(-k)^{(k-1)} x^k}{k!}]])
which is not a Taylor series in ppV(x). The derivatives of ppV(x)ppSupV(x) at 1 give the ppGloss(exponential coefficients) (1, 1, 2, 3, 8, 10, 54, -42, 944, ...) which is ppA(005727). In Sloane's database entry for this sequence, Jovovic gives the ppGloss(closed form):
showing that a simpler form of the first expansion does exist.
</p>
