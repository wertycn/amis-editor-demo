FROM node:14.16.0-alpine3.12

RUN mkdir -p /etc/amis-editor

WORKDIR /etc/amis-editor

COPY . .

EXPOSE 8082
RUN npm i

ENTRYPOINT [ "npm", "run", "server" ]
