FROM continuumio/anaconda3

COPY environment.yml /src/environment.yml
RUN	conda env create -f /src/environment.yml
RUN	conda clean --tarballs -y

COPY input /input
COPY notebooks /src/notebooks
WORKDIR /src/notebooks

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

RUN apt-get update && \
    apt-get install libgl1-mesa-glx -y

ENTRYPOINT ["/entrypoint.sh"]
