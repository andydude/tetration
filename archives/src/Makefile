all: all-pages

make:
	m4 -P m4/make.m4 makefile.m4 > Makefile

images:
	cd tex ; . autopng-script.sh ; cd ..

all-pages:
	rm -f /Users/ajr/Sites/_5GIG/tetration.co.cc/src/tex/autopng-script.sh












	m4 -P m4/inc.m4 -DTITLE="Home of Tetration" -DBASE="/" m4/pre.m4 htdocs/index.m4 m4/post.m4 > ../htdocs/index.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - About Me" -DBASE="/" m4/pre.m4 htdocs/about.m4 m4/post.m4 > ../htdocs/about.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Applications" -DBASE="/" m4/pre.m4 htdocs/appli.m4 m4/post.m4 > ../htdocs/appli.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Identities" -DBASE="/" m4/pre.m4 htdocs/ident.m4 m4/post.m4 > ../htdocs/ident.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Papers" -DBASE="/" m4/pre.m4 htdocs/paper.m4 m4/post.m4 > ../htdocs/paper.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Gallery" -DBASE="/" m4/pre.m4 htdocs/graph.m4 m4/post.m4 > ../htdocs/graph.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Glossary" -DBASE="/" m4/pre.m4 htdocs/gloss.m4 m4/post.m4 > ../htdocs/gloss.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - References" -DBASE="/" m4/pre.m4 htdocs/links.m4 m4/post.m4 > ../htdocs/links.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Visualizer" -DBASE="/" m4/pre-xhtml.m4 htdocs/visual.m4 m4/post-xhtml.m4 > ../htdocs/visual.xhtml

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators" -DBASE="/" m4/pre.m4 htdocs/hyper.m4 m4/post.m4 > ../htdocs/hyper.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - Zeration" -DBASE="/" m4/pre.m4 htdocs/hy-zer.m4 m4/post.m4 > ../htdocs/hy-zer.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - Addition" -DBASE="/" m4/pre.m4 htdocs/hy-add.m4 m4/post.m4 > ../htdocs/hy-add.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - Multiplication" -DBASE="/" m4/pre.m4 htdocs/hy-mul.m4 m4/post.m4 > ../htdocs/hy-mul.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - Exponentiation" -DBASE="/" m4/pre.m4 htdocs/hy-exp.m4 m4/post.m4 > ../htdocs/hy-exp.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - Extensions" -DBASE="/" m4/pre.m4 htdocs/hy-extn.m4 m4/post.m4 > ../htdocs/hy-extn.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Hyper-operators - History" -DBASE="/" m4/pre.m4 htdocs/hist.m4 m4/post.m4 > ../htdocs/hist.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions" -DBASE="/" m4/pre.m4 htdocs/funct.m4 m4/post.m4 > ../htdocs/funct.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Decremented Exponentials" -DBASE="/" m4/pre.m4 htdocs/fn-decexp.m4 m4/post.m4 > ../htdocs/fn-decexp.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Exponential Commutator" -DBASE="/" m4/pre.m4 htdocs/fn-expcom.m4 m4/post.m4 > ../htdocs/fn-expcom.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Exponential Factorial" -DBASE="/" m4/pre.m4 htdocs/fn-expfac.m4 m4/post.m4 > ../htdocs/fn-expfac.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Product Exponential" -DBASE="/" m4/pre.m4 htdocs/fn-prdexp.m4 m4/post.m4 > ../htdocs/fn-prdexp.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Infinite Tetrate" -DBASE="/" m4/pre.m4 htdocs/fn-intow.m4 m4/post.m4 > ../htdocs/fn-intow.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Self-power Function" -DBASE="/" m4/pre.m4 htdocs/fn-sqtow.m4 m4/post.m4 > ../htdocs/fn-sqtow.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Self-root Function" -DBASE="/" m4/pre.m4 htdocs/fn-rctow.m4 m4/post.m4 > ../htdocs/fn-rctow.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Lambert W Function" -DBASE="/" m4/pre.m4 htdocs/fn-lmbrt.m4 m4/post.m4 > ../htdocs/fn-lmbrt.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Special Functions - Topological Conjugacy" -DBASE="/" m4/pre.m4 htdocs/fn-tconj.m4 m4/post.m4 > ../htdocs/fn-tconj.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration" -DBASE="/" m4/pre.m4 htdocs/itern.m4 m4/post.m4 > ../htdocs/itern.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Abel Function" -DBASE="/" m4/pre.m4 htdocs/it-abel.m4 m4/post.m4 > ../htdocs/it-abel.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Bell Matrix" -DBASE="/" m4/pre.m4 htdocs/it-bell.m4 m4/post.m4 > ../htdocs/it-bell.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Chaos" -DBASE="/" m4/pre.m4 htdocs/it-chaos.m4 m4/post.m4 > ../htdocs/it-chaos.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Dynamical Systems" -DBASE="/" m4/pre.m4 htdocs/it-dynsys.m4 m4/post.m4 > ../htdocs/it-dynsys.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Functional Equations" -DBASE="/" m4/pre.m4 htdocs/it-funceq.m4 m4/post.m4 > ../htdocs/it-funceq.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Iteration - Methods" -DBASE="/" m4/pre.m4 htdocs/it-methds.m4 m4/post.m4 > ../htdocs/it-methds.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration" -DBASE="/" m4/pre.m4 htdocs/tetra.m4 m4/post.m4 > ../htdocs/tetra.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Definitions" -DBASE="/" m4/pre.m4 htdocs/te-defs.m4 m4/post.m4 > ../htdocs/te-defs.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Tetrates" -DBASE="/" m4/pre.m4 htdocs/te-spow.m4 m4/post.m4 > ../htdocs/te-spow.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Tetrationals" -DBASE="/" m4/pre.m4 htdocs/te-sexp.m4 m4/post.m4 > ../htdocs/te-sexp.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Super-logarithms" -DBASE="/" m4/pre.m4 htdocs/te-slog.m4 m4/post.m4 > ../htdocs/te-slog.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Super-roots" -DBASE="/" m4/pre.m4 htdocs/te-srt.m4 m4/post.m4 > ../htdocs/te-srt.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Tetration - Methods" -DBASE="/" m4/pre.m4 htdocs/te-methds.m4 m4/post.m4 > ../htdocs/te-methds.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Towers" -DBASE="/" m4/pre.m4 htdocs/tower.m4 m4/post.m4 > ../htdocs/tower.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Towers - Definitions" -DBASE="/" m4/pre.m4 htdocs/tw-defs.m4 m4/post.m4 > ../htdocs/tw-defs.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Towers - Nested Exponentials" -DBASE="/" m4/pre.m4 htdocs/tw-nstexp.m4 m4/post.m4 > ../htdocs/tw-nstexp.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Towers - Prime Factorization" -DBASE="/" m4/pre.m4 htdocs/tw-prmfac.m4 m4/post.m4 > ../htdocs/tw-prmfac.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Towers - Series Expansions" -DBASE="/" m4/pre.m4 htdocs/tw-serexp.m4 m4/post.m4 > ../htdocs/tw-serexp.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Storage" -DBASE="/" m4/pre.m4 htdocs/storg.m4 m4/post.m4 > ../htdocs/storg.html

	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry!" -DBASE="/" m4/pre.m4 htdocs/404.m4 m4/post.m4 > ../htdocs/404.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry! - old main page" -DBASE="/" m4/pre.m4 htdocs/main.m4 m4/post.m4 > ../htdocs/main.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry! - old definitions page" -DBASE="/" m4/pre.m4 htdocs/defs.m4 m4/post.m4 > ../htdocs/defs.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry! - old error page" -DBASE="/" m4/pre.m4 htdocs/error.m4 m4/post.m4 > ../htdocs/error.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry! - old tables page" -DBASE="/" m4/pre.m4 htdocs/tabs.m4 m4/post.m4 > ../htdocs/tabs.html
	m4 -P m4/inc.m4 -DTITLE="Home of Tetration - Sorry! - old code page" -DBASE="/" m4/pre.m4 htdocs/code.m4 m4/post.m4 > ../htdocs/code.html

	m4 -P m4/inc.m4 htdocs/style.m4 > ../htdocs/style.css