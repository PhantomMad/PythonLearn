FROM ubuntu:18.04
RUN apt-get update \
 && apt-get install -yq \
    python-all \
    python-pip
 && rm -rf /var/lib/apt/lists/*
 WORKDIR /opt
 COPY requirements.txt webapp/
 COPY app.py webapps/
