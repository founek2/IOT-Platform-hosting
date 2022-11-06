#!/bin/bash
set -e

npm --no-update-notifier --no-fund start --cache /node-red/data/.npm -- --userDir /node-red/data --settings /node-red/settings.js
# tail -f /dev/null
