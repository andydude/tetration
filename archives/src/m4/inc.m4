m4_changecom(@@@)m4_dnl
m4_changequote([,])m4_dnl
m4_dnl
m4_dnl ppWsDir(text)
m4_dnl
m4_define([ppWsDir], [/Users/ajr/Sites/_5GIG/tetration.co.cc])m4_dnl
m4_dnl
m4_dnl ppImgDir(text)
m4_dnl
m4_define([ppImgDir], [img])m4_dnl
m4_dnl
m4_dnl ppEm(text)
m4_dnl
m4_define([ppEm], [<em>$1</em>])m4_dnl
m4_dnl
m4_dnl ppBi(text)
m4_dnl
m4_define([ppBi], [<em><i>$1</i></em>])m4_dnl
m4_dnl
m4_dnl ppHead(title)
m4_dnl
m4_define([ppHead], [<h1>$1</h1>])m4_dnl
m4_dnl
m4_dnl ppLia(uri, shortdesc, longdesc)
m4_dnl
m4_define([ppLi], [<li>$1 $2</li>])m4_dnl
m4_dnl
m4_dnl ppLia(uri, shortdesc, longdesc)
m4_dnl
m4_define([ppLia], [<li><a href="$1">$2</a> $3</li>])m4_dnl
m4_dnl
m4_dnl ppPara(body)
m4_dnl
m4_define([ppPara], [<p>$1</p>])m4_dnl
m4_dnl
m4_dnl ppPath()
m4_dnl
m4_define([ppPath], [/var/www])m4_dnl
m4_dnl
m4_dnl ppSep(class)
m4_dnl
m4_define([ppSep], [</div><hr/><div class="$1">])m4_dnl
m4_dnl
m4_dnl ppWebBadge(alt, image, uri)
m4_dnl
m4_define([ppWebBadge], [<a href="$3"><img style="border: 0px;" src="$2" alt="1" /></a>])m4_dnl
m4_dnl
m4_dnl ppE(text)
m4_dnl
m4_define([ppE], [<b><i>e</i></b>])m4_dnl
m4_dnl
m4_dnl ppV(text)
m4_dnl
m4_define([ppV], [<var>$1</var>])m4_dnl
m4_dnl
m4_dnl ppSup(text)
m4_dnl
m4_define([ppSup], [<sup>$1</sup>])m4_dnl
m4_dnl
m4_dnl ppSupV(text)
m4_dnl
m4_define([ppSupV], [<sup><var>$1</var></sup>])m4_dnl
m4_dnl
m4_dnl ppSub(text)
m4_dnl
m4_define([ppSub], [<sub>$1</sub>])m4_dnl
m4_dnl
m4_dnl ppSubV(text)
m4_dnl
m4_define([ppSubV], [<sub><var>$1</var></sup>])m4_dnl
m4_dnl
m4_dnl ppImgCenter(text)
m4_dnl
m4_define([ppImgCenter], [<div class="center"><img src="$1" alt="$2"/><br/>$3</div>])m4_dnl
m4_dnl
m4_dnl ppTexCenter(name, text)
m4_dnl
m4_define([ppTexCenter], [
  m4_esyscmd([echo ./autopng '"$1"' "'"']m4_patsubst([m4_patsubst([\begin{align}\notag $2 \end{align}], ['], ['"'"'])], 
  [\\], [\\\\])['"'" >> "]ppWsDir()[/src/tex/autopng-script.sh"])
  </p><p><center><img src="img/tex/$1.png" alt="$2"/></center></p><p class="noindent">])m4_dnl
m4_dnl
m4_dnl ppTexLeft(name, text)
m4_dnl
m4_define([ppTexLeft], [
  m4_esyscmd([echo ./autopng '"$1"' "'"']m4_patsubst([m4_patsubst([\begin{align}\notag $2 \end{align}], ['], ['"'"'])], 
  [\\], [\\\\])['"'" >> "]ppWsDir()[/src/tex/autopng-script.sh"])
  </p><p><img src="img/tex/$1.png" alt="$2"/></p><p class="noindent">])m4_dnl
m4_dnl
m4_dnl ppTexInline(name, text)
m4_dnl
m4_define([ppTexInline], [
  m4_esyscmd([echo ./autopng '"$1"' "'"']m4_patsubst([m4_patsubst([\begin{align}\notag $2 \end{align}], ['], ['"'"'])], 
  [\\], [\\\\])['"'" >> "]ppWsDir()[/src/tex/autopng-script.sh"])
  <img src="img/tex/$1.png" alt="$2"/>])m4_dnl
m4_dnl
m4_dnl ppTexOther(type, name, text)
m4_dnl
m4_define([ppTexOther], [
  m4_esyscmd([echo ./autopng '"$2"' "'"']m4_patsubst([m4_patsubst([\begin{$1} $3 \end{$1}], ['], ['"'"'])],
  [\\], [\\\\])['"'" >> "]ppWsDir()[/src/tex/autopng-script.sh"])
  </p><p><center><img src="img/tex/$2.png" alt="$3"/></center></p><p class="noindent">])m4_dnl
m4_dnl
m4_dnl
m4_dnl ppInf(text)
m4_dnl
m4_define([ppInf], [&infin;])m4_dnl
