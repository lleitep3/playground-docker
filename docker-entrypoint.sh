#! /bin/bash

if [ "$APP_ENV" = 'production' ]; then
  yarn start
elif [ "$APP_ENV" = 'local' ]; then
  yarn dev
fi

exec "$@"
