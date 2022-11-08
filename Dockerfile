FROM node:14-buster-slim@sha256:87fcc5589c887b8460ed00f4650757e4311360394b13fc7d48d70d8af805a504

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
