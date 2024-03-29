FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  make \
  ca-certificates \
  lmodern \
  texlive-latex-base \
  texlive-generic-extra \
  texlive-fonts-extra \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  # latex-xcolor \
  # texlive-math-extra \
  texlive-latex-extra \
  texlive-bibtex-extra \
  texlive-full \
  fonts-freefont-ttf \
  fonts-freefont-otf \
  fonts-roboto \
  fonts-roboto-fontface \
  biber \
  fontconfig \
  texlive-xetex \
  cabextract \
  xfonts-utils \
  libimage-exiftool-perl
RUN apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install fonts
COPY fonts/lato/* /usr/local/share/fonts/
COPY fonts/raleway/* /usr/local/share/fonts/
RUN fc-cache

# remove PDF policy to avoid error
RUN sed -i '/<policy .*pattern="PDF" \/>/d' /etc/ImageMagick-6/policy.xml

# Export the output data
WORKDIR /data
VOLUME ["/data"]
