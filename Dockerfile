FROM node:18-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install -g n8n

RUN chmod +x /docker-entrypoint.sh

EXPOSE 5678

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
