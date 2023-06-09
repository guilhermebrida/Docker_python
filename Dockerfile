FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y libpq-dev python3-tk net-tools lsof && rm -rf /var/lib/apt/lists/* 

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY ./app/requirements.txt .
COPY ./app/udp-server.py .
COPY ./app/XVM.py .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ENV POSTGRES_HOST=localhost
ENV POSTGRES_HOST=postgres
ENV POSTGRES_PORT=5432
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres

# CMD ["python", "-u","./app/udp-server.py"]
# CMD ["python", "-u","./app/server.py"]
CMD ["python", "-u","./app/FOTA.py"]












