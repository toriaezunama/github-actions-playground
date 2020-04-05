FROM node:buster-slim as development

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY index.js test.js ./

EXPOSE 3000
ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]

FROM node:buster-slim as production

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY index.js ./

EXPOSE 3000
ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]
