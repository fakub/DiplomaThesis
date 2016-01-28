defaults:
	pdflatex diplomka.tex

nomencl:
	pdflatex diplomka.tex
	makeindex diplomka.nlo -s nomencl.ist -o diplomka.nls
	pdflatex diplomka.tex
	pdflatex diplomka.tex

bib:
	pdflatex diplomka.tex
	bibtex diplomka.aux
	pdflatex diplomka.tex
	pdflatex diplomka.tex

all:
	pdflatex diplomka.tex
	bibtex diplomka.aux
	makeindex diplomka.nlo -s nomencl.ist -o diplomka.nls
	pdflatex diplomka.tex
	pdflatex diplomka.tex