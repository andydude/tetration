m4_include([htdocs/nav.m4])
ppNavHome()
ppSep(std)
<h1>Identities</h1>
<p>
  This is a complete rewrite of the previous identities page. All of
  the series expansions have been moved to the <a href="funct.html">Special Functions</a>
  pages.
</p>
ppSep(std)
<h1>Notations</h1>
<p>
  There are an unnecessarily large number of notations in common use for functions related
  to tetration. Ideally, only the most powerful notations would be used,
  however, as a matter of convinience we use ppGloss([left-superscript]) notation in preference
  to ppGloss([arrow notation]) and ppGloss([tower notation]). Also, even though ppGloss([box notation]) is closer
  to ppGloss([hyper-operation]) terminology, ppGloss([arrow notation]) will be used,
  because it is more well-known.
</p>
<p>
  <ul>
    <li>
      ppEm([Arrow]) notation is used to write ppGloss([hyper-operation])s,
      and looks like ppTexInline([id-notation-01], [[x{\U}{\U}n]]) for tetration.
      For more information, see the <a href="hyper.html">Hyperops</a> page.
    </li>
    <li>
      ppEm([Iteration]) notation is used to write ppGloss([iterated function])s,
      and looks like ppTexInline([id-notation-02], [[\iter{f}{n}(x)]])
    </li>
    <li>
      ppEm([Quasigroup]) notation is used to write inverse functions of 
      ppGloss([binary operation])s, and it looks like
      ppTexInline([id-notation-07], [[(/*)]]) (for hyper-roots) and
      ppTexInline([id-notation-08], [[(*{\backslash{}})]]) (for hyper-logs). 
    </li>
    <li>
      ppEm([Section]) notation is used to write ppGloss([binary operation])s
      applied to only one argument, and it looks like
      ppTexInline([id-notation-03], [[(x*)]]) or
      ppTexInline([id-notation-04], [[(*y)]]). For more information, see
      <a href="">Haskell sections</a>.
    </li>
    <li>
      ppEm([Tower]) notation is used to write ppGloss([nested exponential])s,
      and looks like ppTexInline([id-notation-05], [[\bigT_{k=1}^{n}a_k]])
    </li>
    <ul>
      <li>
	When all exponents are equal, and the top is 1, this can be written with left-superscript notation for tetration.
      </li>
      <li>
	When all exponents are equal except for the top, then this can be written with iterated exponential notation.
      </li>
    </ul>
  </ul>
</p>
<p>
  When choosing a notation, keep in mind your audience, and familiarity with tetration.
  In general, tetration should be written with left-superscript notation. 
  If there is confusion with multiples in front, then use ppGloss([tower notation])
  ppTexInline([id-not-tow], [[\bigT^{n}a]]), or if there is a complicated
  expression in the ppGloss([height]), then use ppGloss([arrow notation])
  ppTexInline([id-notation-01], [[x{\U}{\U}n]]).
</p>
ppSep(std)
<h1>Axioms</h1>
<p>
ppTexCenter([id-axiom-tet], 
  [[a \U\U n = a \U {\left( a \U\U (n-1) \right)}]])
ppTexCenter([id-axiom-slog], 
  [[(a{\U\U})^{-1}(a^z) = (a{\U\U})^{-1}(z) + 1]])
</p>
ppSep(std)
<h1>Infinite Tetrate and Company</h1>
<p>
The ppGloss([infinite tetrate]) is ppGloss([topologically conjugate]) to the 2nd super-root and the ppGloss([Lambert W-function]).
</p>
<p>
ppTexLeft([id-table-inftet], [[
{}^{\infty}x & = \frac{W(-\ln(x))}{-\ln(x)} = \exp(-W(-\ln(x))) = \frac{1}{\ssqrt{1/x}} \\\notag
\frac{1}{{}^{\infty}(1/x)} & = \frac{\ln(x)}{W(\ln(x))} = \exp(W(\ln(x))) = \ssqrt{x} \\\notag
{}^{\infty}(\ee^{-x})x & = W(x) = x\exp(-W(x)) = \frac{x}{\ssqrt{\ee^x}} \\\notag
]])
for more information see the section on <a href="fn-tconj.html">topological conjugacy</a>.
</p>
ppSep(std)
<h1>Table of Tetration</h1>
<p>
For integer values:
ppTexLeft([id-table-pos1], [[
{}^{-2}a & = \frac{-\infty}{\ln(a)} \\\notag
{}^{-1}a & = 0 \\\notag
{}^{0}a & = 1 \\\notag
{}^{1}a & = a \\\notag
{}^{2}a & = a^a \\\notag
{}^{3}a & = a^{a^a} \\\notag
]])
</p>
<p>
For infinite values:
ppTexLeft([id-table-pminf], [[
{}^{{-}\infty}x & = \frac{W_{-1}(-\ln(x))}{-\ln(x)} \quad\text{for all } x>\ee^{1/\ee}\\\notag
{}^{{-}\infty}x & = \frac{W(-\ln(x))}{-\ln(x)} \quad\quad\text{for all } x<\ee^{-\ee} \\\notag
{}^{\infty}x & = \frac{W(-\ln(x))}{-\ln(x)} \quad\quad\text{for all } \ee^{-\ee} \le x \le \ee^{1/\ee}
]])
</p>
ppSep(std)
<h1>Table of Iterated Exponentials</h1>
<p>
For integer values from any ppV(x):
ppTexLeft([id-table-anyx], [[
\exp_a^{-2}(z) & = \log_a(\log_a(z)) \\\notag
\exp_a^{-1}(z) & = \log_a(z) \\\notag
\exp_a^{0}(z) & = z \\\notag
\exp_a^{1}(z) & = a^z \\\notag
\exp_a^{2}(z) & = a^{a^z} \\\notag
\exp_a^{3}(z) & = a^{a^{a^z}} \\\notag
]])
</p>
<p>
For integer values from -1:
ppTexLeft([id-table-neg1], [[
\exp_a^{-2}({-}1) & = \log_a(\log_a(-1)) \\\notag
\exp_a^{-1}({-}1) & = \frac{\ii \pi}{\ln(a)} \\\notag
\exp_a^{0}({-}1) & = -1 \\\notag
\exp_a^{1}({-}1) & = \frac{1}{a} \\\notag
\exp_a^{2}({-}1) & = a^{1/a} \\\notag
\exp_a^{3}({-}1) & = a^{a^{1/a}} \\\notag
]])
</p>
ppSep(std)
<h1>Inverse Functions</h1>
<p>
Notations for super-roots
ppTexLeft([id-inverse-srt], [[({\U\U}n)^{-1}(z) = \boxhyperroot{4}{n}{z} = \srt_n(z)]])
</p>
<p>
Notations for super-logs
ppTexLeft([id-inverse-slog], [[(a{\U\U})^{-1}(z) = \boxhyperlog{4}{a}{z} = \slog_a(z)]])
</p>
ppSep(std)
<h1>Miscellaneous</h1>
<p>
Exponentiation can be expressed in terms of ppEm(exp) and ppEm(log):
ppTexCenter([id-exp-hy3], [[a^z = \ee^{z\ln(a)}]])
</p>
<p>
Exponentiation can be expressed in terms of ppEm(tet) and ppEm(slog):
ppTexCenter([id-exp-hy4], [[a^z = a \U\U \left(\slog_a(z) + 1\right)]])
</p>
<p>
Iterated exponentials can be expressed in terms of ppEm(tet) and ppEm(slog):
ppTexCenter([id-iterexp-hy4], [[\exp_a^y(z) = a \U\U \left(\slog_a(z) + y\right)]])
</p>

