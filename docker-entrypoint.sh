#!/bin/bash

if [ "${ENV}" = 'production' ]; then
  npm run build
  npm run start
fi

if [ "${ENV}" = 'local' ]; then
  npm run dev
fi

exec "$@"