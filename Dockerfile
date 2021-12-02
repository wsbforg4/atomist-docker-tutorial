FROM node:14-buster-slim@sha256:73ce8fbb436244ffe591d9802c63b525766ca91077d999fab0b795a16dff753f

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
