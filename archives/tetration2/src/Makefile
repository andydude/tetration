all:
	rm -f src-tex/autopng-script.sh
	./src-make.sh appl
	./src-make.sh basic
	./src-make.sh chaos
	./src-make.sh code
	./src-make.sh defs
	./src-make.sh exfac
	./src-make.sh funeq
	./src-make.sh gloss
	./src-make.sh graph
	./src-make.sh hist
	./src-make.sh hyper
	./src-make.sh ident
	./src-make.sh index
	./src-make.sh itern
	./src-make.sh links
	./src-make.sh mthds
	./src-make.sh nmanl
	./src-make.sh paper
	./src-make.sh quest
	./src-make.sh slog
	./src-make.sh sroot
	./src-make.sh tabs
	./src-make.sh tetra
	./src-make.sh tower

images:
	cd src-tex ; . autopng-script.sh ; cd ..

swap:
	if [ -f _direct.m4 ] ; then \
	    mv _.m4 _indir.m4 \
	    mv _direct.m4 _.m4 \
	    exit \
	fi \
	if [ -f _indir.m4 ] ; then \
	    mv _.m4 _direct.m4 \
	    mv _indir.m4 _.m4 \
	    exit \
	fi \
