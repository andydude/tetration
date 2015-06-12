m4_include([htdocs/nav.m4])
ppNavTetra()
ppSep(std)
<h1>Tetrates</h1>
<p>
  Tetrate functions (also called ppEm(super-power) functions) are defined by tetration with 
  constant ppGloss([height]). In other words the function 
  ppTexInline([te-spow-notn], [[f(z) = {}^{n}z]]) is the ppV(n)-th tetrate function.
  For integer ppV(n), tetrate functions can be evaluated using exponentiation alone, 
  which makes them extremely nice to work with. Since we can use exponentiation, 
  tetrate functions may be graphed on pocket calculators, in popular programming languages,
  or the like. For example, on a TI calculator, one can enter <code>Y = X^(X^X)</code> in 
  the graph section to see a graph of the third tetrate.
</p>
<p>
  To extend ppV(n) to real or complex numbers, tetrate functions are not the place to look. 
  This is because the axiom of tetration 
  ppTexInline([ax-tet-spow], [[\spow_{n+1}(z) = z \U \spow_n(z)]])
  does not apply to a single tetrate function, but relates two different tetrate functions.
  Thus, it does not provide a way to gain any insight into a tetrate function, aside
  from its relation to other functions. Also, the way exponentiation is commonly extended
  from integers to real numbers is by way of the rational numbers. With this technique,
  ppV(z)ppSupV(p/q) = ppV(y) is defined such that ppV(z)ppSupV(p) = ppV(y)ppSupV(q), and
  the powers with real number exponents is defined by the limit of rational powers.
  This does not work for tetration, because of the following.
</p>
<p>
  ppEm(Theorem) (Reciprocal Heights) 
  ppIt([The tetrate function of height (1/ppV(n)) is not the ppV(n)th super-root.])
</p>
<p>
  This was first proved by Rubstov and Romerio in [?] with the following proof
  by contradiction. Assume ppTexInline([te-spow-assume], [[{}^{1/n}z = \srt_n(z)]]). It follows
  that ppTexInline([te-spow-limitl], [[\lim_{n\to\infty}{}^{1/n}z = {}^{0}z = 1]]) and
  that ppTexInline([te-spow-limitr], [[\lim_{n\to\infty}\srt_n(z) = \srt_{\infty}(z) = z^{1/z}]]),
  but ppTexInline([te-spow-but], [[1 \ne z^{1/z}]]), therefore
  ppTexInline([te-spow-assume-not], [[{}^{1/n}z \ne \srt_n(z)]]).
</p>
<p>
<ul>
  <li>
    zeroth tetrate
  </li>
  Equivalent to 1
  <li>
    first tetrate
  </li>
  Equivalent to the identity function
  <li>
    second tetrate
  </li>
  <li>
    third tetrate
  </li>
  <li>
    infinite tetrate
  </li>
</ul>
</p>
