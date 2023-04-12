FROM node:14-buster-slim@sha256:798c9ee598403c90de6c50264dd37494b842d1441b34e42fb11175a1e01815a2

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
