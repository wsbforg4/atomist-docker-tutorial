FROM node:14-buster-slim@sha256:35ee29eff31290613c427a1ccfdb317364c820dd8d2adf3c967b25d822de143f

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
