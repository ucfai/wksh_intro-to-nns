FROM phusion/baseimage:0.9.22

ARG user
ARG proj

CMD ["/sbin/my_init"]

RUN mkdir -p /srv/${proj}
WORKDIR /srv/${proj}
ENV PATH /srv/${proj}/bin:$PATH

## Install necessary packages for basic functionalities.
RUN apt-get update \
    && apt-get install -y \
        bzip2 \
        unzip \
        wget \
        pandoc \
        texlive \
        pdf2svg \
        imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

## Install Conda and dependencies
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh
RUN wget --quiet https://repo.continuum.io/miniconda/Miniconda3-4.3.21-Linux-x86_64.sh \
    && /bin/bash Miniconda3-4.3.21-Linux-x86_64.sh -b -p /opt/conda \
    && rm Miniconda3-4.3.21-Linux-x86_64.sh

ENV PATH /opt/conda/bin:$PATH
RUN conda install conda=4.3.21 -y \
    && conda install -c conda-forge -y \
        jupyter_core=4.3.0 \
        jupyter_client=5.1.0 \
        jupyter_console=5.1.0 \
        jupyter_latex_envs=1.3.8.2 \
        jupyter_highlight_selected_word=0.0.11 \
        jupyter_contrib_nbextensions=0.3.1 \
        matplotlib=2.0.2 \
        nbconvert=5.3.1 \
        numba=0.35.0 \
        numpy=1.13.1 \
        pandas=0.20.3 \
        pip=9.0.1 \
        plotly=2.0.11 \
        pytables=3.4.2 \
        python=3.6.1 \
        scipy=0.19.1 \
        scrapy=1.4.0 \
        seaborn=0.8.0 \
        tensorflow=1.3.0 \
        tikzmagic=0.1.0 \
        pymongo=3.4.0 \
    && conda clean --tarballs -y \
    && conda clean --packages -y \
    && pip install colorlover==0.2.1

EXPOSE 19972

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=19972", "--allow-root"]