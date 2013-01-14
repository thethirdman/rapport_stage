
all: rapport abstract

rapport:
	pdflatex rapport.tex
	pdflatex rapport.tex
abstract:

view: rapport
	evince rapport.pdf&

clean:
	@rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg \
	*.ind *.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm       \
	*.synctex.gz *.toc *.vrb *.maf *.mtc *.mtc0

check:
	aspell -d francais check rapport.tex

distclean: clean
	*.pdf
