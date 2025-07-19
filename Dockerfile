FROM node:18-alpine

WORKDIR /usr/src/app

COPY . .

# Install n8n globally
RUN npm install -g n8n

# Make sure the entrypoint script is executable
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
