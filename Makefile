TEXINPUTS := $(CURDIR)/templates//:$(TEXINPUTS)
export TEXINPUTS

LATEXMK := latexmk -pdf -interaction=nonstopmode -halt-on-error
MANUAL_DIR := projects/operating-manual
REPORT_DIR := projects/research-report
MANUAL_PDF := $(MANUAL_DIR)/pdf/vespera-fsi-200-operating-manual.pdf
REPORT_PDF := $(REPORT_DIR)/pdf/uncertainty-budget-fizeau-flats.pdf

.PHONY: all manual report clean

all: manual report

manual: $(MANUAL_PDF)

report: $(REPORT_PDF)

$(MANUAL_PDF): $(MANUAL_DIR)/src/main.tex templates/commands.tex templates/preamble-manual.tex
	mkdir -p $(MANUAL_DIR)/pdf $(MANUAL_DIR)/src/build
	$(LATEXMK) -output-directory=$(CURDIR)/$(MANUAL_DIR)/src/build -cd $(MANUAL_DIR)/src/main.tex
	cp $(MANUAL_DIR)/src/build/main.pdf $@

$(REPORT_PDF): $(REPORT_DIR)/src/main.tex $(REPORT_DIR)/src/references.bib templates/commands.tex templates/preamble-report.tex
	mkdir -p $(REPORT_DIR)/pdf $(REPORT_DIR)/src/build
	$(LATEXMK) -output-directory=$(CURDIR)/$(REPORT_DIR)/src/build -cd $(REPORT_DIR)/src/main.tex
	cp $(REPORT_DIR)/src/build/main.pdf $@

clean:
	rm -rf $(MANUAL_DIR)/src/build $(REPORT_DIR)/src/build
	latexmk -C -cd $(MANUAL_DIR)/src/main.tex || true
	latexmk -C -cd $(REPORT_DIR)/src/main.tex || true
