FROM node:14-buster-slim@sha256:2d3613c3036994319929e280572bfd3fe6f88ac81872611e9d13fd6d58b2a12e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
