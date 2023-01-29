#!/usr/bin/bash
echo "Change pgAdmin storage permission"
sleep 2
mkdir -p data/data_pgadmin; sudo chown 5050:5050 data/data_pgadmin

echo "Create .env file"
sleep 2
cp env .env

echo "Run PostgreSQL with pgAdmin"
sleep 2
docker-compose up