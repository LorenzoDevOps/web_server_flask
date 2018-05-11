FROM ubuntu:16.04
MAINTAINER Lorenzo
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT ["python","hello.py","runserver"]
CMD ["-h=0.0.0.0"]
