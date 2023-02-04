FROM node:14-buster-slim@sha256:34a61df64d1cc853d91116e619e3f6f51bd81d504bed0fe4a822e443e06ad386

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
