FROM node:15

RUN apt-get update && \
    apt-get -y install dos2unix && \
    apt-get clean

RUN npm install -g http-server

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh

COPY . /usr/src/app

RUN find . -type f -not -path "./node_modules/*" -print0 | xargs -0 dos2unix

EXPOSE 8080

CMD ["/usr/src/app/start.sh"]
