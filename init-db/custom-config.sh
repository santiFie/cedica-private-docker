#!/bin/bash
echo "Customizing postgresql.conf..."
sed -i 's/^#port = 5432/port = 5432/' /var/lib/postgresql/data/postgresql.conf
# Uncomment the port in the configuration file

# Restart Postgres service to apply changes
echo "Restarting PostgreSQL service..."
pg_ctl stop -D /var/lib/postgresql/data -m fast
pg_ctl start -D /var/lib/postgresql/data

