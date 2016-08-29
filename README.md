# Resume of Karl Lorey

This is my resume. It's written in TeX, based on the awesome [Deedy Resume](https://github.com/deedy/Deedy-Resume) and inspired by [Johannes Schickling's resume](https://github.com/schickling/resume).

## Compilation

```bash
xelatex -synctex=1 -interaction=nonstopmode resume.xtx  && bibtex resume.aux && xelatex -synctex=1 -interaction=nonstopmode resume.xtx 
```
