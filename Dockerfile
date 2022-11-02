FROM node:14-buster-slim@sha256:2171dbcb50c30ca117ccfd71c256452d2ad3dc770fd137c8585efa4aa0f106d1

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
