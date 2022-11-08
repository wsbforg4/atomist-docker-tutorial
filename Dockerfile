FROM node:14-buster-slim@sha256:e115d9189fefafe585f8506ef7c8e959f2007d86b134587847c10da6524fd646

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
