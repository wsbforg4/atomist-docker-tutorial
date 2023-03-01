FROM node:14-buster-slim@sha256:1b0a6763129c1f0aa9e4ea3180291417a7de476f90e72800c132535203d1fcad

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
