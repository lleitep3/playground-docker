#! /bin/bash

if [ "$APP_ENV" = 'production' ]; then

  if [ ! -d "/app/dist" ]; then
    yarn build
  fi

  yarn start
fi

if [ "$APP_ENV" = 'local' ]; then
  yarn dev
fi

exec "$@"