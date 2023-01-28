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