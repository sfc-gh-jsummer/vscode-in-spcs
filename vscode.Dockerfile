FROM lscr.io/linuxserver/code-server:latest

RUN apt update \
    && apt install \
       python3 python3-dev python3-pip \
       libmariadb-dev -y \
    && rm -rf /var/lib/apt/lists/*

RUN ln -fs /usr/bin/pip3 /usr/bin/pip \
    && ln -fs /usr/bin/python3 /usr/bin/python 