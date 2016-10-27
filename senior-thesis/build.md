It's been three years and I totally forgot how to compile this thing. I believe the steps are:

- Ensure *logic_via_algebra.tex*, *title.tex*, and *logic_via_algebra.toc* are present.
- Run
```bash
pdflatex logic_via_algebra.tex # broken initially, but generates .aux
bibtex logic_via_algebra.aux
pdflatex logic_via_algebra.tex
```

If cross references are present, these steps may need to be repeated. I think the pdf I'm committing here looks okay, but I'm not going to proofread it right now.
