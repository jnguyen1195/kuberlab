FROM centos:latest
MAINTAINER joe_nguyen@yahoo.com
WORKDIR /app
EXPOSE 8000
COPY template/requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt
ENTRYPOINT /bin/bash
COPY . /app