FROM alpine:latest
RUN apk update && apk add bash

RUN mkdir -p /scripts
COPY script.sh /scripts
COPY charts.csv /scripts
WORKDIR /scripts
RUN chmod +x script.sh
CMD ["bash", "script.sh"]