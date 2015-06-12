m4_include([htdocs/nav.m4])
ppNavTetra()
ppSep(std)
<h1>Tetration</h1>
<p>
Tetration
</p>
ppSep(std)
<h1>Definitions</h1>
<p>
  <ul>
    <li>
      ppEm(ppGloss(Tetration)) is an ppGloss([iterational]) of an ppGloss([exponential]) from 1.
    </li>
    <li>
      A ppEm(ppGloss(tetrate)) function is ppGloss([tetration]) with a constant ppGloss([height]).
    </li>
    <li>
      A ppEm(ppGloss(tetrational)) function is ppGloss([tetration]) with a constant ppGloss([base]).
    </li>
    <li>
      A ppEm(ppGloss(super-root)) is an inverse function of a ppGloss([tetrate]) function.
    </li>
    <li>
      A ppEm(ppGloss(super-log)) is an inverse function of a ppGloss([tetrational]) function.
    </li>
  </ul>
</p>
ppSep(std)
<h1>Notation</h1>
<p>
  There are two related ppEm([tetration]) notations:
</p>
<table border="0" class="define">
  <tr><td>
      ppTexInline([te-notation-01], [[{}^{n}{a}
      = a^{a^{\cdot^{\cdot^{a^{a}}}}}]])
    </td><td>
      (Maurer) for tetration
  </td></tr><tr><td>
      ppTexInline([te-notation-02], [[\exp_a^{n}(z)
      = a^{a^{\cdot^{\cdot^{a^{z}}}}}]])
    </td><td>
      (Euler) for iterated exponentials
  </td></tr>
</table>
<p>
  for more notations, see the <a href="tower.html">Tower Definitions</a> page.
</p>
<p>
  Super-roots are written ppTexInline([te-notation-srt], [[
  x = \asrt{y}{z}]]) where ppTexInline([te-notation-where], [[
  z = {}^{y}x]])
</p>
<p>
  Super-logs are written ppTexInline([te-notation-slog], [[
  y = \aslog{x}{z}]]) where ppTexInline([te-notation-where], [[
  z = {}^{y}x]])
</p>
