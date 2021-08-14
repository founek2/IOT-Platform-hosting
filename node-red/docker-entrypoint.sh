#!/bin/bash
set -e

if [ ! -f "/node-red/data/settings.js" ]; then
    cp settings.js user-authentication.js /node-red/data
fi

npm --no-update-notifier --no-fund start --cache /node-red/data/.npm -- --userDir /node-red/data
# tail -f /dev/null
