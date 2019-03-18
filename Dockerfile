FROM daocloud.io/library/node:8.15.0-jessie-slim
LABEL maintainer="Zhouyu <muyu.zhouyu@outlook.com>"
RUN apt update
RUN apt install -y squashfs-tools gcc g++ make curl git python
RUN curl -L http://enclose.io/nodec/nodec-linux-x64.gz | gunzip > nodec
RUN chmod +x nodec
RUN mv ./nodec /bin/