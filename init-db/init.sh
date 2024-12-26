#!/bin/bash
# init-db/init.sh

# Esperamos a que PostgreSQL esté listo
until PGPASSWORD=1234 psql -h "localhost" -U "grupo43" -d "grupo43" -c '\q'; do
  echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo "Postgres is up - executing backup"
PGPASSWORD=1234 psql -h "localhost" -U "grupo43" -d "grupo43" < /docker-entrypoint-initdb.d/output.sql
