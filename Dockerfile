FROM node:14-buster-slim@sha256:4fe19cf7320d73e86220561824c5b0d5196bcb2401e252614a62fb19b439d5e7

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
