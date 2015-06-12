m4_include([htdocs/nav.m4])
ppNavTetra()
ppSep(std)
<h1>Super-logarithms</h1>
<p>
Super-logarithms are inverse functions of tetrational functions.
Super-logarithms are variously written using the following notations
ppTexCenter([id-inverse-slog], [[(a{\U\U})^{-1}(z) = \boxhyperlog{4}{a}{z} = \slog_a(z)]])
but on this page, we use the mnemonic notation ppEm(slog) exclusively.
</p>
<p>
Super-logarithm functions were originally defined over a sparse domain, which consisted of {0, 1, ppV(a), ppV(a)ppSupV(a), ...} and so on, because these are the only points defined for integer tetration. 
In order to extend this definition to real numbers or complex numbers, 
advanced mathematics is required to find a function that satisfies both 
infinite differentiability and the definition of super-logarithms:
ppTexCenter([te-slog-def], 
  [[\slog_a(a^z) = \slog_a(z) + 1]])
</p>
ppSep(std)
<h1>Power Series</h1>
<p>
ppTexCenter([te-slog-taylor], 
  [[\slog_a(z) = \sum_{k=0}^{\infty} s_k(a) (z - z_0)^k]])
ppTexCenter([te-slog-taylog], 
  [[\slog_a(z) = \frac{1}{L}\log(z - L) + \frac{1}{L^{*}}\log(z - L^{*}) + \sum_{k=0}^{\infty} r_k(a) (z - z_0)^k]])
where
ppTexInline([fix-hi], [[L = H_{-1}(\ee)]]) and
ppTexInline([fix-lo], [[L^{*} = H_{0}(\ee)]]).
</p>

