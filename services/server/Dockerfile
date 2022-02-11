# base image
FROM python:3.9.4-slim

# install netcat
RUN apt-get update && \
    apt-get -y install netcat dos2unix && \
    apt-get clean

# set working directory
WORKDIR /usr/src/app

# add and install requirements
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

# add start.sh
COPY ./start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh

# add app
COPY . /usr/src/app

RUN find . -type f -print0 | xargs -0 dos2unix

# run server
CMD ["/usr/src/app/start.sh"]