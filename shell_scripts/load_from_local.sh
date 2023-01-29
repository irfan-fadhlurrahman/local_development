#!/usr/bin/bash
# Temporary change POSTGRES_HOST in .env variable
export POSTGRES_HOST=localhost

# Activate virtual environment
cd ~/local_development/containers; pipenv shell

# Append current project directory to PYTHONPATH
export PYTHONPATH="${PYTHONPATH}:~/local_development"

# Run the script
# Taxi Zones
python ~/local_development/src/load_trips_data.py \
--datetime_columns None \
--url https://github.com/DataTalksClub/nyc-tlc-data/releases/download/misc/taxi_zone_lookup.csv \
--table_name taxi_zones \
--chunksize None 

# Yellow Taxi Trips 2021-01
python ~/local_development/src/load_trips_data.py \
--datetime_columns tpep_pickup_datetime tpep_dropoff_datetime \
--url https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz \
--table_name taxi_zones \
--chunksize 100000 