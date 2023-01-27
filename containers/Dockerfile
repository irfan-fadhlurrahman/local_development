FROM python:3.9

RUN pip install pipenv

WORKDIR /app

COPY [ "Pipfile", "Pipfile.lock", "./"]
RUN pipenv install --system --deploy

# Add path to use a package
ENV PYTHONPATH="/app:${PYTHONPATH}"

COPY src src
COPY utils utils

ENTRYPOINT [ "python", "src/load_trips_data.py" ]

# Step 1: Go to project location: ~/local_development
# Step 2: Create .dockerignore to add **/data and **/dataset
# Step 3: docker build -f ./containers/Dockerfile -t load_trips_data:v01 .
# Step 4: docker run -it load_trips_data:v01