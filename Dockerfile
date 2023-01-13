FROM node:14-buster-slim@sha256:ddba41170b7094ebc8e24de46fa4f7bf7624983a694591e55e25bc29f8667318

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
