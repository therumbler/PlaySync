FROM python:3.13.3-alpine
EXPOSE 8081

WORKDIR /app

RUN apk update
RUN apk add --no-cache --virtual .build-deps \
    gcc \
    python3-dev \
    postgresql-dev

RUN pip install --no-cache-dir \
    --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir \
    -r requirements.txt


COPY . .

ENTRYPOINT [ "./entrypoint.sh" ]