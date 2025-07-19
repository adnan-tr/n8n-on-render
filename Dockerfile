FROM node:18-alpine

WORKDIR /usr/src/app

COPY . .

# Install n8n globally
RUN npm install -g n8n

# Make sure the entrypoint script is executable (inside WORKDIR)
RUN chmod +x ./docker-entrypoint.sh

# Expose port 5678 for Render
EXPOSE 5678

ENTRYPOINT ["/bin/sh", "./docker-entrypoint.sh"]
