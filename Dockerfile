FROM node:slim

RUN apt update && apt install dos2unix -y

RUN npm i --global yarn

ARG ENV
ENV ENV ${ENV}

WORKDIR /app

ADD ./app /app

ADD ./docker-entrypoint.sh /usr/local/bin/
RUN dos2unix /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN ln -s /usr/local/bin/docker-entrypoint.sh entrypoint.sh

CMD ["entrypoint.sh"]