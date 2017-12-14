#!/bin/bash
set -e

echo $(pwd)

if [ "$RESET_DB" == 'true' ]; then
  bundle exec rails db:migrate:reset db:seed
fi

exec "$@"
