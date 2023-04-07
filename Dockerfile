FROM node:14-buster-slim@sha256:f984c34bab1c36a31ea8edffd655f3978ee50c1ccb22ea9a65a66068db3508cb

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
