FROM rabbitmq:3.11-alpine

RUN apk update && apk add openssh-keygen git openssl make python3 &&  mkdir /keys

COPY ./config/ /etc/rabbitmq/
COPY ./tls-gen /tls-gen
COPY ./docker-entrypoint.sh .
CMD [ "./docker-entrypoint.sh" ]