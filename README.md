![Resume preview](https://github.com/lorey/resume/raw/master/resume.jpg)

# Resume of Karl Lorey

This is my resume. It's written in TeX, based on the awesome [Deedy Resume](https://github.com/deedy/Deedy-Resume) and inspired by [Johannes Schickling's resume](https://github.com/schickling/resume).

[View PDF](https://github.com/lorey/resume/raw/master/resume.pdf)

## Compilation

```bash
make
```

which executes xelatex, bibtex, and two times xelatex again to get the citations to work:

```bash
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
bibtex resume.aux
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
convert -density 300 resume.pdf -resize 50% resume.png
```
