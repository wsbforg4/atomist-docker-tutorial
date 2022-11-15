FROM node:14-buster-slim@sha256:f5a6ca13b0c65738d85473d74633b99a00806edb9160f318570531ebe4185bd3

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
