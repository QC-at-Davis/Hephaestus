FROM frolvlad/alpine-miniconda3

RUN apk add --no-cache --virtual .build-dependencies gcc musl-dev linux-headers && \
    conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install --yes matplotlib=3.2.0 qutip=4.5.0 jupyter=1.0.0 && \
    pip install qiskit --compile --no-cache-dir && \
    apk del --purge .build-dependencies && \
    conda clean -afy && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.pyc' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete && \
    find /opt/conda/lib/python*/site-packages/bokeh/server/static -follow -type f -name '*.js' || true
