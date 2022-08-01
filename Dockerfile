FROM ubuntu:18.04
RUN apt-get update
RUN  DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    python-all \
    python-pip \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /opt
COPY requirements.txt webapps/
COPY app.py webapps/
RUN  pip install -qr webapps/requirements.txt
EXPOSE 5000
CMD ["python", "webapps/app.py"]