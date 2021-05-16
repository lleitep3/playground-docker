FROM node:slim

RUN npm install -g nodemon

ARG APP_ENV

ENV APP_ENV $APP_ENV

WORKDIR /app

ADD ./app /app

ADD ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]