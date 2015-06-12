m4_include([infoset/nav.m4])

ppSep(std)
ppHead([Fundamental Interfaces])
ppPara([
There are many interfaces out there, command-line interfaces, graphical user interfaces,
scripting, and application programming interfaces. Here we focus on GUIs but not
in a way thats being done now, but in a way that they could be in the future as well.
])

<ul>
<li>Canvas Interfaces</li>
	<ul>
	<li>ppEm(List-View)</li> This is implemented differently in different interfaces.
	For example when organizing bookmarks, there is only one degree of freedom (DOF),
	and that is linear position so nodes have: (x, icon, title) states. Usually
	x is not in pixels, but the order in the list a node is.
	<li>ppEm(Grid-Aligned-View)</li> Similar to list view only nodes have (x, y, icon, title).
	<li>ppEm(Grid-View)</li> One of the most utilized interfaces in file-browsers.
	In this interface, all nodes have: (x, y, icon, title) where x and y are in pixels.
	<li>ppEm(Messy-View)</li> Central idea behind ppEm(BumpTop) and ppEm(Perceptive Pixel)
	interfaces. All notes have (x, y, z, matrix, icon title). The most
	generic interface for node viewing.
	</ul>
<li>Linear Interfaces</li>
	<ul>
	<li>ppEm(Fan-View)</li> An interface both BumpTop and Perceptive Pixel use
	where you drag a pile of nodes and they get spread across the path your pointer makes.
	<li>ppEm(Fisheye-View)</li> A generic name BumpTop uses to describe the Apple Dock
	magnification interface.
	<li>ppEm(Leafer-View)</li> A generic name BumpTop uses to describe
	the Apple iTunes flip-thru interface.
	<li>ppEm(Pile-View)</li> Any collection of nodes that have been selected and
	placed in proximity to each other or near the same (x,y) coord if there is
	a z coord (i.e. in ppEm(Messy-View)).
	</ul>
<li>Tree Interfaces</li>
	<ul>
	<li>ppEm(Column-View)</li> Found prominently in the Apple Finder, the default
	file-browser for Mac OS. Also found in the Mathematica Help broser.
	<li>ppEm(Graph-View)</li> Not implemented anywhere.
	<li>ppEm(Tree-View)</li> Confusingly called "List-View" by the Apple Finder.
	Found in wxWidgets in three forms: arrow-icons, folder-icons, plus-icons.
	<li>ppEm(Menu-View)</li> Browsing nodes in menu form.
	</ul>
</ul>

ppSep(std)
ppHead([Apple])
ppPara([])

ppSep(std)
ppHead([BumpTop])
ppPara([])

ppSep(std)
ppHead([Perceptive Pixel])
ppPara([])

