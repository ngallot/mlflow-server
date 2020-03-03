FROM python:3.7-slim-stretch


# Install dependencies
ADD requirements.txt ./
RUN python -m pip install -r requirements.txt

# Import gcp credential files and nginx config
# RUN mkdir credentials
# COPY ./credentials/mlflow.json /credentials/mlflow.json

ADD startup.sh ./startup.sh
RUN chmod +x ./startup.sh

ENTRYPOINT ./startup.sh