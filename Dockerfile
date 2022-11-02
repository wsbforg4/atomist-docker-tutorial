FROM node:14-buster-slim@sha256:e5908cb26060eeeb9f7714adf6b5534f5dda47f6aea9fe5c52e1b057c19e4ca4

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
