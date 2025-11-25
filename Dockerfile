FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda install --yes --file /tmp/conda-linux-64.lock \
    && conda clean --all -y -f

