![Resume preview](https://github.com/lorey/resume/raw/master/resume.jpg)

# Resume of Karl Lorey

This is my resume. It's written in TeX, based on the awesome [Deedy Resume](https://github.com/deedy/Deedy-Resume) and inspired by [Johannes Schickling's resume](https://github.com/schickling/resume).

[View PDF](https://github.com/lorey/resume/raw/master/resume.pdf)

## Modification
* Small bibliography
* Sidebar without coursework
* Sidebar with extended skills section

## Requirements
* xelatex, bibtex
* imagemagick
* Fonts: [Lato](https://fonts.google.com/specimen/Lato) and [Raleway](https://fonts.google.com/specimen/Raleway)

## Installation (Docker)
* build the dockerfile: `docker build -t lorey/resume .`
* run inside docker `docker run --rm -v $(pwd):/data lorey/resume make`

Please keep in mind that the full latex installation and thus the docker image needs around 2GB of storage...
If you have latex installed already, I would just run the makefile locally.

## Usage
There is a Makefile that defines all outputs.
You can run it inside the Docker container (see above) or locally (see below):
```bash
make
```

It basically executes xelatex, bibtex, and two times xelatex again to get the citations to work:

```bash
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
bibtex resume.aux
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
xelatex -synctex=1 -interaction=nonstopmode resume.xtx
convert -density 300 resume.pdf -resize 50% resume.png
```
