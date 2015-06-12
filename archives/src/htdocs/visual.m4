m4_include([htdocs/nav.m4])
m4_include([htdocs/vis.m4])
ppNavHome()
ppSep(std)
<h1>Visualization</h1>
<p>
  Please select from the options below to view plots of tetration and related functions.
</p>
<div id="application">
<div id="appVisualizer">
<div id="appOptions">
 <div id="appPlotType" style="text-align: left;">
  <label>Plot Type</label>
  <br/>
  <input type="radio" name="appGraph" value="rect" checked="checked"/><label>Rectangular plot</label>
  <br/>
  <input type="radio" name="appGraph" value="polar"/><label>Polar plot</label>
  <br/>
  <input type="radio" name="appGraph" value="spow"/><label>Fractal plot</label>
  <br/>
  <input type="radio" name="appGraph" value="spow"/><label>Contour plot</label>
 </div>

 <div id="appFunction" style="text-align: left;">
  <div id="appFuncHeight">
  <label>Height:</label>
  <select>
    ppOption(-infinity)
    ppOption(-2)
    ppOption(-1.9)
    ppOption(-1.8)
    ppOption(-1.7)
    ppOption(-1.6)
    ppOption(-1.5)
    ppOption(-1.4)
    ppOption(-1.3)
    ppOption(-1.2)
    ppOption(-1.1)
    ppOption(-1)
    ppOption(-0.9)
    ppOption(-0.8)
    ppOption(-0.7)
    ppOption(-0.6)
    ppOption(-0.5)
    ppOption(-0.4)
    ppOption(-0.3)
    ppOption(-0.2)
    ppOption(-0.1)
    ppOption(0)
    ppOption(0.1)
    ppOption(0.2)
    ppOption(0.3)
    ppOption(0.4)
    ppOption(0.5)
    ppOption(0.6)
    ppOption(0.7)
    ppOption(0.8)
    ppOption(0.9)
    ppOption(1)
    ppOption(1.1)
    ppOption(1.2)
    ppOption(1.3)
    ppOption(1.4)
    ppOption(1.5)
    ppOption(1.6)
    ppOption(1.7)
    ppOption(1.8)
    ppOption(1.9)
    <option value="2" selected="selected">2</option>
    ppOption(2.1)
    ppOption(2.2)
    ppOption(2.3)
    ppOption(2.4)
    ppOption(2.5)
    ppOption(2.6)
    ppOption(2.7)
    <option value="e">e</option>
    ppOption(2.8)
    ppOption(2.9)
    ppOption(3)
    ppOption(3.1)
    <option value="3.14159265358979323846264338328">pi</option>
    ppOption(3.2)
    ppOption(3.3)
    ppOption(3.4)
    ppOption(3.5)
    ppOption(3.6)
    ppOption(3.7)
    ppOption(3.8)
    ppOption(3.9)
    ppOption(4)
    ppOption(infinity)
  </select>
   <br/>
   <input type="radio" name="appFunction" value="spow"/><label>Tetrate (superpower)</label>
   <br/>
   <input type="radio" name="appFunction" value="sroot"/><label>Superroot</label>
  </div>
  <div id="appFuncBase">
  <label>Base:</label>
  <select>
    ppOption(-1)
    ppOption(-0.9)
    ppOption(-0.8)
    ppOption(-0.7)
    ppOption(-0.6)
    ppOption(-0.5)
    ppOption(-0.4)
    ppOption(-0.3)
    ppOption(-0.2)
    ppOption(-0.1)
    ppOption(0)
    ppOption(0.1)
    ppOption(0.2)
    ppOption(0.3)
    ppOption(0.4)
    ppOption(0.5)
    <option value="0.567143290409783872999968662210">0.567143 = W(1)</option>
    <option value="0.577215664901532860606512090082">0.577216 = gamma</option>
    ppOption(0.6)
    ppOption(0.7)
    ppOption(0.8)
    ppOption(0.9)
    ppOption(1)
    ppOption(1.1)
    ppOption(1.2)
    ppOption(1.3)
    ppOption(1.4)
    <option value="1.41421356237309504880168872421">1.414213 = sqrt(2)</option>
    <option value="1.444667861009766133658339108596">1.444668 = e^(1/e)</option>
    ppOption(1.5)
    ppOption(1.6)
    <option value="1.61803398874989484820458683437">1.618033 = phi</option>
    ppOption(1.7)
    ppOption(1.8)
    ppOption(1.9)
    ppOption(2)
    ppOption(2.1)
    ppOption(2.2)
    ppOption(2.3)
    ppOption(2.4)
    ppOption(2.5)
    ppOption(2.6)
    ppOption(2.7)
    <option value="e" selected="selected">e</option>
    ppOption(2.8)
    ppOption(2.9)
    ppOption(3)
    ppOption(3.1)
    <option value="3.14159265358979323846264338328">3.141592 = pi</option>
    ppOption(3.2)
    ppOption(3.3)
    ppOption(3.4)
    ppOption(3.5)
    ppOption(3.6)
    ppOption(3.7)
    ppOption(3.8)
    ppOption(3.9)
    ppOption(4)
    ppOption(4.1)
    ppOption(4.2)
    ppOption(4.3)
    ppOption(4.4)
    ppOption(4.5)
    ppOption(4.6)
    ppOption(4.7)
    ppOption(4.8)
    <option value="4.8104773809653516554730356667">4.810477 = i^(1/i)</option>
    ppOption(4.9)
    ppOption(5)
    ppOption(6)
    ppOption(7)
    ppOption(8)
    ppOption(9)
    ppOption(10)
  </select>
   <br/>
   <input type="radio" name="appFunction" value="sexp" checked="checked"/>
   <label>Tetrational (superexponential)</label>
   <br/>
   <input type="radio" name="appFunction" value="slog"/><label>Superlog (superlogarithm)</label>
  </div>
  <br/>
  <input type="button" value="Draw" onclick="draw()"/>
 </div>
</div>
<div id="appPlotBorder">
<div id="appPlot">
<canvas id="appCanvas"/>
hi there
<div style="background-color: white">hi</div>
</div>
</div>
</div>
</div>
ppSep(std)
<h1>Gallery</h1>
<br/>
ppImgCenter([img/taux-9.png], [taux], [
<math xmlns="http://www.w3.org/1998/Math/MathML">
 <msubsup><mo>exp</mo><mi>e</mi><mi>y</mi></msubsup>
 <mo>(</mo><mi>x</mi><mo>)</mo>
</math> for ppV(y) in {
<span style="color: #F33;">1</span>,
<span style="color: #C93;">&frac34;</span>,
<span style="color: #CF6;">&frac12;</span>,
<span style="color: #6F3;">&frac14;</span>,
<span style="color: #3F6;">0</span>,
<span style="color: #3FF;">-&frac14;</span>,
<span style="color: #06F;">-&frac12;</span>,
<span style="color: #33C;">-&frac34;</span>,
<span style="color: #C3F;">-1</span>
}])
<p>
Visualizing Tetration
</p>
