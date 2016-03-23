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
	cd figures/leak_bit;\
		./leak_bit.gnp;\
		latex leak_bit.tex;\
		dvipdf leak_bit.dvi
	cd figures/leak_target;\
		./leak_target.gnp;\
		latex leak_target.tex;\
		dvipdf leak_target.dvi;\
		./leak_target_unicolor.gnp;\
		latex leak_target_unicolor.tex;\
		dvipdf leak_target_unicolor.dvi
	cd figures/leak_target_other;\
		./leak_0x0f_0xf0.gnp;\
		latex leak_0x0f_0xf0.tex;\
		dvipdf leak_0x0f_0xf0.dvi

# ----------------------------------------------------------------------

defaults: rule-latex

nomencl: rule-latex rule-nomencl rule-latex

bib: rule-latex rule-bib rule-latex

fig: rule-fig rule-latex

all: rule-fig rule-latex rule-bib rule-nomencl rule-latex
