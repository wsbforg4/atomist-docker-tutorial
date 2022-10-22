FROM node:14-buster-slim@sha256:4ee824f39c1790b5d352af88b101acccc0ad6158460fb34115e45ee5e7cc49fa

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
