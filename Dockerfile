FROM node:14-buster-slim@sha256:115376b353c6406bb6a1c49bb2da18f67bdb505b952c4eebd0d44fb3d9183d8b

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
