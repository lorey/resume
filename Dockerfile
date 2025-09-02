FROM debian:13

ENV DEBIAN_FRONTEND=noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  make \
  ca-certificates \
  lmodern \
  texlive-latex-base \
  texlive-latex-recommended \
  texlive-lang-english \
  texlive-fonts-recommended \
  fonts-freefont-ttf \
  fonts-freefont-otf \
  fonts-roboto \
  fonts-roboto-fontface \
  biber \
  fontconfig \
  texlive-xetex \
  cabextract \
  xfonts-utils \
  libimage-exiftool-perl \
  imagemagick \
  ghostscript
RUN apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install fonts
COPY fonts/lato/* /usr/local/share/fonts/
COPY fonts/raleway/* /usr/local/share/fonts/
RUN fc-cache

# Export the output data
WORKDIR /data
VOLUME ["/data"]
