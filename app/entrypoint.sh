#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# Do it just for the initial run, otherwise your data will be gone
# python manage.py flush --no-input
# python manage.py migrate

exec "$@"
