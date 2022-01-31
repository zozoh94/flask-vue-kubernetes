FROM node:15

RUN npm install -g http-server

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh

COPY . /usr/src/app

EXPOSE 8080

CMD [ "/usr/src/app/start.sh" ]
