rule-latex: diplomka.tex
	pdflatex diplomka.tex

rule-nomencl: diplomka.tex diplomka.nlo nomencl.ist diplomka.nls
	makeindex diplomka.nlo -s nomencl.ist -o diplomka.nls

rule-bib: diplomka.tex diplomka.aux
	bibtex diplomka.aux

rule-fig:
	./figures/power_trace/plot.gnp
	cd figures/game_semsec;\
		mpost game_semsec.mp;\
		epstopdf game_semsec-1.eps

# ----------------------------------------------------------------------

defaults: rule-latex

nomencl: rule-latex rule-nomencl rule-latex

bib: rule-latex rule-bib rule-latex

fig: rule-fig rule-latex

all: rule-fig rule-latex rule-bib rule-nomencl rule-latex
