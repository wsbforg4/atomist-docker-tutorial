FROM node:14-buster-slim@sha256:217f0969b5eeb593614eb4c62afd8212fe589d432796111a16d32bf0effaaebd

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
