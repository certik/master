all: master.pdf

master.pdf: master.tex macros.tex
	pdflatex master.tex
