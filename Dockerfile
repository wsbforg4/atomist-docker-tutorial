FROM node:14-buster-slim@sha256:92c58aa33bcbe94ee27bbfe5233302b6a887e2550cfe94721ef76239d254e2c8

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
