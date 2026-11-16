# Scientific Instrumentation Operating Manual

**Demonstration project.** This is an original, professionally typeset operating manual for a fictional optical measurement instrument. It is not a commercial product and is not affiliated with Äpre Instruments.

## Document

- **Title:** Vespera FSI-200 Laser Fizeau Surface Interferometer — Operating Manual
- **Document no.:** VES-FSI-200-OM-001, Revision A
- **Compiled PDF:** [pdf/vespera-fsi-200-operating-manual.pdf](pdf/vespera-fsi-200-operating-manual.pdf)
- **Source:** [src/](src/)

## Contents

1. Safety
2. System description and optical layout
3. Technical specifications
4. Operating procedures (startup, transmission-flat alignment, measuring a flat, measuring a spherical surface)
5. Calibration
6. Troubleshooting
7. Maintenance

The source uses the shared portfolio templates: custom commands, SI units, numbered procedures, and caution/warning callouts. Diagrams are drawn in TikZ.

## Compile

From the repository root:

```bash
make manual
```

Or in TeXstudio / Overleaf: set the root file to `src/main.tex` and add `../../templates` to the TeX search path (`TEXINPUTS`).
