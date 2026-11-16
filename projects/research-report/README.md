# Scientific Engineering Research Report

**Demonstration project.** This is an original engineering report. It uses a fictional instrument and synthetic example data. It is not a commercial study and is not affiliated with Äpre Instruments.

## Document

- **Title:** Uncertainty Budget for Phase-Shifting Fizeau Interferometry of Optical Flats
- **Compiled PDF:** [pdf/uncertainty-budget-fizeau-flats.pdf](pdf/uncertainty-budget-fizeau-flats.pdf)
- **Source:** [src/main.tex](src/main.tex)
- **Bibliography:** [src/references.bib](src/references.bib)

## Contents

The report develops a GUM-style combined standard uncertainty for surface form of an optical flat measured in a laser Fizeau cavity. It includes:

- Optical path difference and five-bucket phase-shifting equations
- Conversion from wrapped phase to surface height
- Tabulated Type A and Type B contributions
- A bar-chart comparison of uncertainty terms
- Citations to Malacara, Bruning, Creath, ISO 10110-5, ISO 14999-4, and JCGM 100:2008

Bibliography entries are published references, not personal publications.

## Compile

From the repository root:

```bash
make report
```

Requires `biber` (MacTeX / TeX Live). In Overleaf, compile with pdfLaTeX and Biber.
