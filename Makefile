all: clean
	latex master.tex
	bibtex master
	latex master.tex
	latex master.tex
	dvips master.dvi

clean:
	rm -rf master.aux master.bbl master.blg master.dvi master.log master.ps master.toc
