
FROM node:16-alpine3.11

# Install tools, create Node-RED app and data dir, add user and set rights
RUN set -ex && \
    apk add --no-cache \
    bash \
    openssl \
    tzdata \
    ca-certificates && \
    mkdir -p /node-red/data
# chown -R node-red:node-red /data && \
# chown -R node-red:node-red /usr/src/node-red

# Set work directory
WORKDIR /node-red

# package.json contains Node-RED NPM module and node dependencies
COPY ./docker-entrypoint.sh ./package.json ./template/settings.js ./template/user-authentication.js ./

RUN npm install

# Expose the listening port of node-red
EXPOSE 1880

# ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--userDir", "/data"]

CMD [ "./docker-entrypoint.sh" ]