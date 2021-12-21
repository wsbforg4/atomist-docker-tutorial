FROM node:14-buster-slim@sha256:723b96adc3da8253df3b9bea5ed63203a3b38d65bfbced6045708d368ea9b4c4

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
