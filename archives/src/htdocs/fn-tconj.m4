m4_include([htdocs/nav.m4])
ppNavFunc()
ppSep(std)
<h1>Topological Conjugacy</h1>
<p>
  Two functions ppV(f) and ppV(g) are ppEm(topological conjugates) 
  if a ppGloss(homeomorphism) ppV(h) exists between them such that
  ppTexInline([tc-def], [f \circ h = h \circ g]). This
  allows us to relate the iterates of ppV(f) and ppV(g) together. 
  Since ppV(h) is a homeomorphism, it is an ppGloss(invertible) 
  function, so we can write ppV(f) in terms of the others as 
  ppTexInline([tc-cor], [f = h \circ g \circ h^{-1}]).
  The second iterate of ppV(f) would then be
ppTexInline([tc-snd], [f^2 = h \circ g \circ h^{-1} \circ h \circ g \circ h^{-1} = h \circ g^2 \circ h^{-1}]),
so generalizing this result we get 
ppTexInline([tc-trd], [f^n = h \circ g^n \circ h^{-1}]).
</p>
<p>
This may be said more simply by saying the following diagram commutes: 
ppTexOther([diagram], [tc-general], [[
A & \rTo^{g} & A \\ 
\dTo^{h} & & \dTo_{h} \\ 
B & \rTo^{f} & B
]])
The reason why there is only two sets instead of four is that ppV(f) and ppV(g) are required to be ppGloss(endofunction)s in order to iterate them. The fortunate consequence of this is that you can "stack" these diagrams together in almost any way you want. Thus, from the previous diagram we can form the diagram:
ppTexOther([diagram], [tc-general2], [[
A & \rTo^{g} & A & \rTo^{g} & A \\ 
\dTo^{h} & & \dTo_{h} & & \dTo_{h} \\ 
B & \rTo^{f} & B & \rTo^{f} & B
]])
which also must commute. These kinds of operations can form new equations at every step of the way. Using these diagrams, you can encode ppIt(dozens) of equations in a single expression. This provides an incredible economy of space and economy of thought. It makes dealing with multiple equations much simpler.
</p>
ppSep(std)
<h1>Exponential-like Conjugates</h1>
<p>
</p>
<p>
ppTexOther([diagram], [tc-exponent], [[
(z+1)h & \rTo^{h^{x/h}} & (h^{z+1}) \\ 
\dTo^{x/h - 1} & & \dTo_{x/h - 1} \\ 
(z) & \rTo^{h^x - 1} & (h^{z} - 1)
]])
</p>
ppSep(std)
<h1>Lambert-like Conjugates</h1>
<p>
ppTexOther([diagram], [tc-lambert], [[
\left(\ee^{W(z)} = \frac{z}{W(z)} \right) & & & \rTo^{x^x} & & & \left(\ee^{W(z)\ee^{W(z)}} = \ee^z\right) \\ 
 & \luTo^{\ee^x} & & & & \ruTo^{\ee^x} & \\
\dTo^{\frac{1}{x}} & & W(z) & \rTo^{x\ee^x} & (z) & & \dTo_{\frac{1}{x}} \\
 & \ldTo^{\ee^{-x}} & & & & \rdTo^{\ee^{-x}} & \\
\left(\ee^{-W(z)} = \frac{W(z)}{z} \right) & & & \rTo{x^{1/x}} & & & \left(\ee^{-W(z)\ee^{W(z)}} = \ee^{-z}\right)
]])
</p>
