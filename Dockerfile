FROM node:14-buster-slim@sha256:531d09f944eafaac66c64cc4421fd60e802aa14c29c9a47f60b267f3e0d69926

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
