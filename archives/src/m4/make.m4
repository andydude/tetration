m4_changecom($$$)m4_dnl
m4_changequote([,])m4_dnl
m4_dnl
m4_dnl ppMakeStyle(path)
m4_dnl
m4_define([ppMakeStyle],
[	m4 -P m4/inc.m4 $1.m4 > ../$1.css])m4_dnl
m4_dnl
m4_dnl ppMakePage(path, title)
m4_dnl
m4_define([ppMakePage],
[	m4 -P m4/inc.m4 -DTITLE="$2" -DBASE="/" m4/pre.m4 $1.m4 m4/post.m4 > ../$1.html])m4_dnl
m4_dnl
m4_dnl ppMakeXHTML(path, title)
m4_dnl
m4_define([ppMakeXHTML],
[	m4 -P m4/inc.m4 -DTITLE="$2" -DBASE="/" m4/pre-xhtml.m4 $1.m4 m4/post-xhtml.m4 > ../$1.xhtml])m4_dnl
all: all-pages

make:
	m4 -P m4/make.m4 makefile.m4 > Makefile

images:
	cd tex ; . autopng-script.sh ; cd ..

all-pages:
	rm -f /Users/ajr/Sites/_5GIG/tetration.co.cc/src/tex/autopng-script.sh
