change-pgadmin-storage-permissions:
	bash bash_scripts/change_permissions.sh
docker-install:
	bash bash_scripts/install_docker.sh
docker-build-image:
	docker build -f ./containers/Dockerfile -t load_trips_data:v01 .
docker-run-container:
	bash bash_scripts/load_using_docker.sh
env-copy:
	cp ./env ./.env
miniconda-install:
	bash bash_scripts/install_miniconda.sh
test-db-connection:
	bash bash_scripts/test_db_connection.sh
venv-create:
	bash bash_scripts/create_venv.sh