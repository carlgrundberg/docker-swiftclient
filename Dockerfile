FROM python:slim

ADD requirements.txt .
RUN apt update -y && apt-get install -y python3-dev build-essential && pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["swift"]
CMD ["-h"]
