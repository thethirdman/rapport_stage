all: slides

slides:
	pdflatex slides.tex
	pdflatex slides.tex

view: slides
	evince slides.pdf 2>&1 1>/dev/null &

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg \
	*.ind *.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm       \
	*.maf *.mtc* \
	*.synctex.gz *.toc *.vrb *.maf *.mtc *.mtc0
