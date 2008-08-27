all: clean
	pdflatex master.tex
	bibtex master
	pdflatex master.tex
	pdflatex master.tex

clean:
	rm -rf master.aux master.bbl master.blg master.dvi master.log master.ps master.toc master.pdf
