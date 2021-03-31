  
FROM continuumio/miniconda3:4.5.12

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    cowsay vim htop \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

RUN conda install -y -c bioconda bismark=0.22.3 trim-galore=0.6.4

RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.11.0/sratoolkit.2.11.0-ubuntu64.tar.gz \
    && tar zxvf sratoolkit.2.11.0-ubuntu64.tar.gz

ENV PATH $PATH:/sratoolkit.2.11.0-ubuntu64/bin

WORKDIR /bismark