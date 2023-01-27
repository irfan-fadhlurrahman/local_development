#!/usr/bin/bash
# Temporary change POSTGRES_HOST in .env variable
export POSTGRES_HOST=localhost

# Execute the script
cd ~/local_development/containers
pipenv shell
python ~/local_development/utils/db_connection.py