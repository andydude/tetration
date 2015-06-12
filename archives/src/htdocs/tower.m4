m4_include([htdocs/nav.m4])
ppNavTower()
ppSep(std)
<h1>Towers</h1>
<p>

</p>
ppSep(std)
<h1>Definitions</h1>
<p>
  <ul>
    <li>
      A ppEm(ppGloss([nested exponential])) of ppGloss([height]) 
      ppV(n) is the solution ppV(b)ppSub(1)
      of a ppGloss([recurrence equation]) 
      ppTexInline([tw-define-01], [[b_k = a_k^{b_{k-1}}]])
      where ppV(a)ppSub(ppV(k)) = 1 for all ppV(k) &gt; ppV(n).
    </li>
    <li>
      An ppEm(ppGloss([infinite exponential])) is the limit of solutions 
      ppTexInline([tw-define-02], [[\lim_{n\to\infty} c_n(1)]])
      of a ppGloss([recurrence equation]) 
      ppTexInline([tw-define-03], [[c_k(z) = c_{k-1}(a_k^z)]])
      where ppV(c)ppSub(0)(ppV(z)) = ppV(z).
    </li>
  </ul>
</p>
<p>
  Informally, a ppGloss([nested exponential]) is an expression of the form
  ppTexInline([tw-intro-01], [[a^{b^{\cdot^{\cdot^{y^z}}}}]])
</p>
<p>
  Nested exponentials have also be called: ppGloss([tower])s,
  ppGloss([infinite exponential])s, heterogeneous towers,
  exponential towers, ppV(n)-ary exponentials, and ppV(n)-ary towers.
  Here, we use the terms ppGloss([nested exponential]) and
  ppV(n)-ary tower synonymously.
</p>
ppSep(std)
<h1>Notations</h1>
<p>
  There are five parts to ppEm([ppV(N)-ary tower]) notation:
</p>
<table border="0" class="define">
  <tr><td>
      ppTexInline([tw-notation-01], [[\BigT{k=1}{n}a_k
      = a_1^{a_2^{\cdot^{\cdot^{a_{n-1}^{a_n}}}}}]])
    </td><td>
      (Barrow's notation) for nested exponentials
  </td></tr><tr><td>
      ppTexInline([tw-notation-02], [[\BigT{k=1}{n}(a_k; z)
      = a_1^{a_2^{\cdot^{\cdot^{a_{n}^{z}}}}}]])
    </td><td>
      (Barrow-Shell notation) for nested exponential functions
  </td></tr><tr><td>
      ppTexInline([tw-notation-03], [[\bigT(a_1, a_2, a_3, \cdots, a_n)
      = a_1^{a_2^{\cdot^{\cdot^{a_{n-1}^{a_n}}}}}]])
    </td><td>
      (Brunson's notation) for arbitrary nested exponentials
  </td></tr><tr><td>
      ppTexInline([tw-notation-05], [[{\rm T}^n(a; z) 
      = \exp_a^{n}(z)
      = a^{a^{\cdot^{\cdot^{a^z}}}}]])
    </td><td>
      (similar to Galidakis' notation) for iterated exponentials
  </td></tr><tr><td>
      ppTexInline([tw-notation-04], [[{\rm T}^na 
      = {}^{n}a
      = a^{a^{\cdot^{\cdot^{a^a}}}}]])
    </td><td>
      (similar to Maurer's notation) for tetration
  </td></tr>
</table>
<p>
  for more notations, see the <a href="tetra.html">Tetration Definitions</a> page.
</p>
<p>
  One thing to note is that the last two notations can be implied by the first two,
  by assuming that ppV(k) = 1 implicitly. So while it may seem to duplicate what
  can be expressed with more popular notations, it is much more consistent with
  tower notation as a whole. Also, tower notation does not have any ambiguity
  when compared to Maurer's left-superscript notation, since any multiple like
  ppTexInline([tw-notation-06], [[c{\rm T}^na]]) 
  is clearly delimited by the T (Greek <i>tau</i>).
</p>
