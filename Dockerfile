FROM node:14-buster-slim@sha256:4dd1b700a2bed88aac5074b5f48bcc044f9cf1ae904e6e974e9b8e975e751fd1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
