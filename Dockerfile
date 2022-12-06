FROM node:14-buster-slim@sha256:97d1b5e9c0158178a85d0bd65563f94084fd0e55b5d12d6fe0d3534c4d1ceae8

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
