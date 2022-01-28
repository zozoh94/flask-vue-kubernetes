FROM node:15-alpine

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080

CMD [ "/start.sh" ]
