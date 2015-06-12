m4_include([htdocs/nav.m4])
ppNavTower()
ppSep(std)
<h1>Series Expansions</h1>
<p>
  Towers and ppGloss([nested exponential])s are difficult to deal with in
  their pure form, since a 0 or 1 in any exponent can cancel out all
  higher exponents, and the higher exponents influence the final value
  much more than the lower exponents. To have more tools available to
  deal with towers, it would be nice to be able to convert nested exponentials
  into a power series. 
  m4_dnl To this end, the following is an attempt to achieve this.
</p>
<p>
  If you're wondering why the theorem is boxed, it's because it is my theorem, 
  derived from scratch after months of hard work.
</p>
ppSep(std)
<h1>Theorem</h1>
<p>
ppTexCenter([tw-series], [[\boxed{
\BigT{k=1}{n}{a_k} = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
\prod_{i=1}^{n}\frac{(k_{i-1}\log(a_i))^{k_i}}{(k_i)!}
}]])
where ppV(k)ppSub(0) = 1.
</p>
ppSep(std)
<h1>Proof</h1>
<p>
We can prove this by ppGloss([induction]). For clarity, we can substitute 
ppTexInline([tw-proof-01], [[a_k = \ee^{b_k}]]) without loss of information.
As a basis (case 1), we know that:
ppTexCenter([tw-proof-02], [[
\BigT{k=1}{1}(\ee^{b_k}; z) = \ee^{b_1 z} 
= \sum_{k_1=0}^{\infty}\frac{(b_1 z)^{k_1}}{(k_1)!}
= \sum_{k_1=0}^{\infty} z^{k_1} \frac{(b_1)^{k_1}}{(k_1)!}
]])
If we assume the following (case ppV(n)):
ppTexCenter([tw-proof-03], [[
\BigT{k=1}{n}(\ee^{b_k}; z) = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
z^{k_n} \prod_{i=1}^{n}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
]])
where ppV(k)ppSub(0) = 1, then it follows that:
ppTexCenter([tw-proof-big], [[
\BigT{k=1}{n+1}(\ee^{b_k}; z) 
& = \BigT{k=1}{n}(\ee^{b_k}; \ee^{b_{n+1}z})
\\\notag & = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
{(\ee^{b_{n+1}z})}^{k_n}
\prod_{i=1}^{n}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\notag & = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
\ee^{k_nb_{n+1}z} \prod_{i=1}^{n}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\notag & = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
\sum_{k_{n+1} \ge 0} \frac{{(k_nb_{n+1}z)}^{k_{n+1}}}{(k_{n+1})!}
\prod_{i=1}^{n}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\notag & = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le n}}
\sum_{k_{n+1} \ge 0} z^{k_{n+1}} \frac{{(k_nb_{n+1})}^{k_{n+1}}}{(k_{n+1})!}
\prod_{i=1}^{n}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\notag & = \sum_{\substack{k_j \ge 0 \\ 1 \le j \le (n+1)}}
z^{k_{n+1}} \prod_{i=1}^{n+1}\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
]])
which is case (ppV(n) + 1). Since case ppV(n) implies case (ppV(n) + 1), 
substituting ppV(z) = 1 and ppTexInline([tw-proof-05], [[b_k = \log(a_k)]])
proves the theorem.
</p>
