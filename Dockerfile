FROM node:14-buster-slim@sha256:64574aae0a6194ffd32a4bd85ec31cb2e918b79e83869a7f5aada1f5d6fa4f01

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
