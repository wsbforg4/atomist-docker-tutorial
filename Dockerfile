FROM node:14-buster-slim@sha256:95acb387317a685a30ebf6a785e702f4cafb40c453e46aee9a4559c69cfa58a8

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
