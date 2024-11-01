FROM python:2.7.18-alpine

RUN apk add --no-cache fping=4.2-r0

WORKDIR /app

COPY prometheus.yml .

COPY ping-exporter.py .

CMD ["sh", "-c", "python ping-exporter.py --PORT ${PORT}"]

