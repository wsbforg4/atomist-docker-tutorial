FROM node:14-buster-slim@sha256:39a0bdf734dddb2033b2101271ad6befec569d06f274228dd176da72687551db

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
