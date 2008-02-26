all: master.pdf

master.pdf: master.tex macros.tex
	cd tmp; pdflatex master.tex
	cd tmp; pdflatex master.tex
	cd tmp; pdflatex master.tex
	cp tmp/master.pdf .

master.tex:
	./convert_doc.py src/main.xml tmp/master.xml
	./convert_doc.py tmp/master.xml tmp/master.tex

macros.tex:
	cp src/macros.tex tmp/
