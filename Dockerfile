FROM node:14-buster-slim@sha256:3539cd9518a82b3fbfaa5ac11b5e556e5e19131c30f30115acc2702139dec74e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
