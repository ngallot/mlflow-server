FROM python:3.7-slim-stretch

# Install dependencies
ADD requirements.txt ./
RUN python -m pip install --upgrade pip -r requirements.txt

ADD startup.sh ./startup.sh
RUN chmod +x ./startup.sh

ENTRYPOINT ./startup.sh