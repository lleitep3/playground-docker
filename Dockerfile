FROM node:slim

# RUN apt update && apt install curl git -y
RUN npm install -g nodemon

ARG APP_ENV
ARG PORT

ENV APP_ENV $APP_ENV
ENV PORT $PORT

RUN groupadd -r app_user && useradd -r -g app_user app_user
USER app_user

WORKDIR /home/app_user/app

ADD ./app /home/app_user/app

USER root
ADD ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

USER app_user

ENTRYPOINT ["/docker-entrypoint.sh"]