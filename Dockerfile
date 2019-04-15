FROM continuumio/miniconda3:4.5.12

RUN apt-get update --fix-missing && \
    apt-get -y remove texlive-binaries --purge && \
    apt-get install -y \
    dvipng texlive-latex-base texlive-latex-extra \
    texlive-latex-recommended texlive-fonts-recommended \
    latexmk gsfonts build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
