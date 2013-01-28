IMGS=data/ast1.png data/ast2.png data/devchain.png data/trad1.png \
		 data/id1.png

all: rapport abstract

%.png:%.dot
	dot -Tpng $< > $@

rapport: ${IMGS}
	pdflatex rapport.tex
	pdflatex rapport.tex

abstract:

view: rapport
	evince rapport.pdf 2>&1 1>/dev/null &

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg \
	*.ind *.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm       \
	*.synctex.gz *.toc *.vrb *.maf *.mtc *.mtc0
	rm -f words.aspell
	rm -f ${IMGS}

check:
	aspell --lang=fr --encoding=utf-8 create master ./words.aspell < ./words.dico
	aspell -d francais --add-extra-dicts=./words.aspell -t -c rapport.tex

distclean: clean
	*.pdf
