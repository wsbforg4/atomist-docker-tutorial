FROM node:14-buster-slim@sha256:1e880693a4fb1ecf011be828c0ca18d864f1fc8907751ff43d5b6dcb5de2267f

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
