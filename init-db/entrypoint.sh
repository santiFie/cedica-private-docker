#!/bin/bash

echo "Checking if restore is needed..."

PGPASSWORD=1234 psql -U grupo43 -d grupo43 -c '\q' 2>/dev/null
if [ $? -eq 0 ]; then
    echo "Database is accessible. Executing restore..."
    PGPASSWORD=1234 psql -U grupo43 -d grupo43 < /docker-entrypoint-initdb.d/output.sql
else
    echo "Database is not accessible. Skipping restore."
fi

# Ejecutar el entrypoint original de PostgreSQL
exec docker-entrypoint.sh "$@"

