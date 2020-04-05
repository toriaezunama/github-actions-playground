FROM node:buster-slim

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY index.js ./

EXPOSE 3000
ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]
