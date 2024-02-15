FROM node:18-alpine as base

WORKDIR /src
COPY package*.json /
EXPOSE 3002

FROM base as production
ENV NODE_ENV=production
RUN npm ci
COPY . /
CMD ["node", "bin/www"]
