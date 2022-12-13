FROM node:14-buster-slim@sha256:01bef92c54de1d7472ada9c28eb72ce29ba5d15dcb9b82f0486034b3ab19ab14

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
