# Technical Writing Portfolio

**Software Engineer | Technical Writer | Scientific Documentation Engineer**

I develop software and document scientific and engineering systems. My work connects implementation with clear operating procedures, mathematical explanations, technical illustrations, and maintainable document sources.

## Selected work

| Work | Read | Source and context |
| --- | --- | --- |
| Published Technical Documentation — Äpre Instruments | [Publication index](published/apre-instruments.md) | Software Engineer and Technical Writer, 2018–2021; original company-hosted documents |
| Scientific Instrumentation Operating Manual | [PDF](pdfs/instrument-manual.pdf) | [LaTeX source](projects/instrument-manual/main.tex) · [Project brief](projects/instrument-manual/README.md) |
| Scientific Engineering Research Report | [PDF](pdfs/engineering-report.pdf) | [LaTeX source](projects/engineering-report/main.tex) · [Project brief](projects/engineering-report/README.md) |

Both original projects are **demonstration projects**. The Lumen F100 instrument, specifications, software controls, and observations are fictional. The report uses synthetic data; neither project claims experimental validation, product certification, or company affiliation.

## Documentation engineering

- **Technical writing:** task-oriented procedures, prerequisites, expected results, failure handling, troubleshooting, and maintenance records.
- **Scientific publishing:** mathematical notation, explicit assumptions, tables, cross-references, citations, and a BibTeX bibliography.
- **LaTeX engineering:** a [shared style package](templates/portfolio.sty), semantic commands, reusable layouts, and editable TikZ diagrams.
- **Reproducibility:** source-controlled documents, a repeatable PDF build, and a Python calculation tied to the report’s data.
- **Authoring tools:** LaTeX, Overleaf, and TeXstudio. The same source tree supports local and browser-based editing.

## Build and edit

Requirements: TeX Live with pdfLaTeX, latexmk, BibTeX, Latin Modern, TikZ/PGF, microtype, enumitem, fancyhdr, booktabs, and hyperref. Python 3 is needed only for the calculation.

```sh
bash scripts/build.sh
python3 scripts/calculate.py
```

The build copies final PDFs to `pdfs/`. Run from the supplied script so the relative template paths remain valid.

**Overleaf:** upload the repository ZIP, choose `projects/instrument-manual/main.tex` or `projects/engineering-report/main.tex` as the main document, and select pdfLaTeX. Keep the folder structure. Overleaf uses latexmk and resolves the report’s BibTeX bibliography.

**TeXstudio:** open either `main.tex`; configure pdfLaTeX and BibTeX, compile, run BibTeX for the report, then compile twice more. Keep the shared `templates/` directory in place.

## Organization

```text
published/                    Links and authorship context for Äpre work
templates/portfolio.sty        Shared typography, notation, notices, and layout
projects/instrument-manual/    Operating manual source and editorial brief
projects/engineering-report/   Report source, bibliography, and synthetic data
pdfs/                         Compiled demonstration documents
scripts/                      PDF build and numerical reproduction
```

[Validation record](VALIDATION.md) · [GitHub profile](https://github.com/codejupiter)

Company-owned publications are linked, never redistributed. No license to Äpre materials is granted by this repository.
