FROM node:buster-slim as development

RUN mkdir -p /app
WORKDIR /app
RUN touch development
COPY package.json ./
RUN npm install
COPY index.js test.js ./

EXPOSE 3000
ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]

#############

FROM node:buster-slim as production

RUN mkdir -p /app
WORKDIR /app
RUN touch production
COPY package.json package-lock.json ./
RUN npm ci --production
COPY --from=development /app/index.js .

EXPOSE 3000
ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]
