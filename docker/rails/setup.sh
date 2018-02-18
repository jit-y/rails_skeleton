#!/bin/bash
set -e

bundle install --path vendor/bundle -j2

if [ "$RESET_DB" = "true" ]; then
  bundle exec rails db:migrate:reset db:seed
fi

exec "$@"
