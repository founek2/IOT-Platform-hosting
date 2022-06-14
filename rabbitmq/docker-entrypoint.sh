#!/bin/bash
set -e

if [ ! -f "/keys/server_key.pem" ]; then
    cd /tls-gen/basic
    make CN=mqtt
    mv ./result/ca_certificate.pem /keys/
    mv ./result/server_mqtt_certificate.pem /keys/server_certificate.pem
    mv ./result/server_mqtt_key.pem /keys/server_key.pem
fi

chown rabbitmq:rabbitmq /keys/{ca_certificate.pem,server_certificate.pem,server_key.pem}

rabbitmq-server
