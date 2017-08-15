FROM centos:latest
MAINTAINER Marco Braga "git@mtulio.eng.br"

RUN yum install -y epel-release
RUN yum install -y python2-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
