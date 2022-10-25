FROM node:14-buster-slim@sha256:85acc264ef4e722612163d22442bb8dcc60a18ab7a36c1139e8303546f34469c

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
