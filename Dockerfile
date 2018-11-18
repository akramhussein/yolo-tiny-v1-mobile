FROM continuumio/anaconda3

COPY environment.yml /src/environment.yml
RUN	conda env create -f /src/environment.yml
RUN	conda clean --tarballs -y

COPY data /src/data
COPY images /src/images
COPY notebooks /src/notebooks
WORKDIR /src/notebooks

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
