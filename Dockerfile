FROM node:16 as stylebuild

WORKDIR /home

COPY style/package.json .
COPY style/package-lock.json .
COPY style/webpack.config.js .
COPY style/src ./src

RUN npm install
RUN npm run build


FROM ghcr.io/epoz/shmarql:latest

COPY --from=stylebuild /home/static /src/static/

COPY src/templates/base.html /src/templates/base.html
COPY src/templates/detail.html /src/templates/detail.html
COPY src/static/* /src/static/