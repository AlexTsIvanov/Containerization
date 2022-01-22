#!/bin/bash
set -e

export $(cat .env)

echo 'Creating host directory'
mkdir -p host/directory
cd ./host/directory

echo 'Extracting data from source...'
PGPASSWORD="${PGPASSWORD}" pg_dump -h ${PGFETCH} -p ${PGPORT} -U ${PGUSER} ${PGDATABASE} > ${PGDATABASE}.sql

echo "CREATE USER ${PGOWNER} WITH PASSWORD '${PGOWNERPASSWORD}';" > tmp
cat ${PGDATABASE}.sql >> tmp
mv tmp ${PGDATABASE}.sql

docker-compose up

