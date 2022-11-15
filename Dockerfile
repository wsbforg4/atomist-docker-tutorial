FROM node:14-buster-slim@sha256:548d378544aab91e855cb5cce2b6fbbfa0486474656549564e4f869ba89eb436

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
