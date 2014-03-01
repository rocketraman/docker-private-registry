#!/bin/bash

check() {
  echo "Check: $1"
    if [ "$1" == "" ]; then
      echo "[ERROR] $2"
      exit 1
    fi
}

WORKER_SECRET_KEY="${WORKER_SECRET_KEY:-$(< /dev/urandom tr -dc A-Za-z0-9 | head -c 32)}"
sed -i "s/ secret_key: REPLACEME/ secret_key: ${WORKER_SECRET_KEY}/" config/config.yml

GUNICORN_WORKERS=${GUNICORN_WORKERS:-4}
