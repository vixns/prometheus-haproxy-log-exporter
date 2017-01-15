FROM python:3-alpine
COPY . /src
RUN apk --no-cache --update add curl \
    && cd /src && python setup.py install \
    && cd / && rm -rf /src
ENTRYPOINT ["/usr/local/bin/prometheus-haproxy-log-exporter"]
