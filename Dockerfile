FROM node:14-buster-slim@sha256:5b5568e6b6feabf4c064906437a9e0f1be225d6525626ea7dfb3bf14b83cf372

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
