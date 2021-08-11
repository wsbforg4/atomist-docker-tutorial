FROM node:14-buster-slim

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm ci

CMD ["node", "index.js"]
