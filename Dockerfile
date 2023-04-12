FROM node:14-buster-slim@sha256:47ab57eb39cd8653ac42d34dfd0d7c028ea30c23c7a63f7d5016254a59eccdf4

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
