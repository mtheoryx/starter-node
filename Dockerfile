FROM node:12.7.0-alpine

WORKDIR /usr/app

# Install dependencies (Which does NOT change that frequently)
COPY ./package.json ./package-lock.json ./
RUN npm i --silent

# Copy over the application code (which changes more frequently)
COPY . .

# Expose ports
EXPOSE 3000

# Default command (can be overridden on cli and docker compose)
CMD ["node", "./bin/www"]
