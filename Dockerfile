FROM ubuntu:16.04
MAINTAINER Lorenzo
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
ENTRYPOINT ["python","hello.py","runserver"]
CMD ["-h=0.0.0.0"]

#FROM centos:latest
#RUN yum -y update \
#    && yum -y install  epel-release \
#    && yum -y install git python36 python34-pip \
#    && yum  clean all
#COPY requirements.txt /
#RUN /bin/pip3 install -r /requirements.txt
#RUN  mkdir -p /home/dev/web_server_flask
#WORKDIR /home/dev/web_server_flask
#COPY hello.py .
#COPY README.md /home/dev/web_server_flask
#ADD templates /home/dev/web_server_flask/templates
#ADD static /home/dev/web_server_flask/static
#EXPOSE 5000
#ENTRYPOINT ["python3","hello.py","runserver"]
#CMD ["-h=0.0.0.0"]
