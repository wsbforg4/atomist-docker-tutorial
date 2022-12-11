FROM node:14-buster-slim@sha256:93a23f31fda09bc741d654254177533a57196b6bbd61ba9617654cf7f9bb61a9

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
