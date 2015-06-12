m4_include([htdocs/nav.m4])
ppNavFunc()
ppSep(std)
<h1>Self-power (ppV(x)ppSupV(x))</h1>
<p>
	The ppEm(self-power) function is a great way to start learning about tetration. 
	It is simply defined as ppV(x)ppSupV(x), but it is also a form of tetration, 
	because ppV(x)ppSupV(x) = ppSup(2)ppV(x).
	However, even this simple function displays some aspects of tetration, for example, 
	it grows faster than any power function and faster than any exponential function.  
	One of the first steps that most people take before considering ppGloss(tetration) 
	in general is to first think about ppV(x)ppSupV(x), and then go on to generalize to 
	the next logical step, which is tetration.
</p>
<p>
	One prominent property of the self-power function is that its graph is only real-valued
	for positive inputs, which means that negative inputs create complex-valued outputs.
	To see why this is, let us consider when ppV(x) = -1/2: when we substitute this in the
	definition we get (-1/2)ppSup([[(-1/2)]]) = 
	ppTexInline([xtothex-xneghalf], [[-\ii\sqrt{2}]])
	which is an imaginary number.
</p>
ppSep(std)
<h1>Series for ppV(x)ppSupV(x)</h1>
<p>
Although this is one of the simplest cases of ppGloss(tetration), it is a non-trivial case, since the immediate answer to a series expansion for ppV(x)ppSupV(x) would be:
ppTexCenter([xtothex-simple], [[x^x = 
\ee^{x\log(x)} = \sum_{k=0}^{\infty} \frac{x^k \log(x)^k}{k!}]])
which is not a Taylor series in ppV(x). The derivatives of ppV(x)ppSupV(x) at 1 give the ppGloss(exponential coefficients) (1, 1, 2, 3, 8, 10, 54, -42, 944, ...) which is ppA(005727). In Sloane's database entry for this sequence, Jovovic gives the ppGloss(closed form):
ppTexCenter([xtothex-taylor], [[x^x = 
\sum_{k=0}^{\infty}\frac{(x-1)^k}{k!}
\sum_{j=0}^{k}\stirfirst{k}{j}
\sum_{i=0}^{j}\binom{j}{i} i^{(j-i)}
]])
This leads to the question: why is it so complicated? which also leads to whether or not it would be different if the function was not ppV(x)ppSupV(x), but what if the function was 
ppTexInline([xtothex-expexp], [[\ee^{x \ee^x}]]) instead? The derivatives of this function at 0 yields a similar set of ppGloss(exponential coefficients) (1, 1, 3, 10, 41, 196, 1057, ...) which is ppA(000248). This database entry gives the ppGloss(closed form):
ppTexCenter([xtothex-puiseux], [[x^x = 
\sum_{k=0}^{\infty}\frac{\log(x)^k}{k!}
\sum_{j=0}^{k}\binom{k}{j} j^{(k-j)}
]])
showing that a simpler form of the first expansion does exist.
</p>
