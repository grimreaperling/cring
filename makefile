all: CRing.tex chapters/*.tex other/macros.tex other/titlepage.tex other/intro.tex other/theoremdef.tex other/packages.tex other/biblio.tex other/lastupdated.tex 
	pdflatex CRing.tex
	pdflatex CRing.tex
	bibtex CRing
	pdflatex CRing.tex

dvi:
	latex -src CRing.tex	
	latex -src CRing.tex
	bibtex CRing
	latex -src CRing.tex	

preview:
	pdflatex CRing.tex
	open CRing.pdf

new_date:
	date +"%B %e, %Y." > other/lastupdated.tex	

clean:
	rm -f *.log *.pdf *.dvi *.out *.log *.toc *.aux *.fdb_latexmk *.blg *.bbl

cleanup:
	rm -f *.log *.out *.log *.toc *.aux *.fdb_latexmk *.blg *.bbl
