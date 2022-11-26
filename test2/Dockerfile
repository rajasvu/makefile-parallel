FROM python:3.11-slim-bullseye

WORKDIR /app

RUN apt-get update
RUN apt install build-essential -y --no-install-recommends

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m", "unittest", "test2.tests"]