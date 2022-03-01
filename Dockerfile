FROM node:14-buster-slim@sha256:1fc72f6832419752e72eea9d9af7268767bf60bdfffaf7adb9495e7f62337d66

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
