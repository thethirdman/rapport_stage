
all: rapport abstract

rapport:
	pdflatex rapport.tex
	pdflatex rapport.tex
abstract:

clean:
	@rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg \
	*.ind *.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm       \
	*.synctex.gz *.toc *.vrb *.maf *.mtc *.mtc0

distclean: clean
	*.pdf
