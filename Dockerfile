FROM node:14-buster-slim@sha256:259431f4c6f395f74e45810048ddf75d7f17faa30002c609aaf2a7491db5b880

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
