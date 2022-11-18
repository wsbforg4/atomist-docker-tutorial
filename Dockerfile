FROM node:14-buster-slim@sha256:4bad4e4f9b917fe3f720dad19cb04cf9c5b6c9bf20feaf333768c645859dea36

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
