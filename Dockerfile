FROM node:14-buster-slim@sha256:d6e01ae27a0a827785fc90ecdebb12bb6ba1b0fd52ca7b484ed75da5ef11e50e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
