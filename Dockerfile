FROM node:14-buster-slim@sha256:5fc18b7895980374c592ba1b077e70024bba6d890fc4479b2138f7a22e35e497

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
