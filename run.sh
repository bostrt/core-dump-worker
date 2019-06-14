#!/bin/bash

if [[ -z "${SERVICE_NAME}" ]] || [[ -z "${SERVICE_PORT}" ]]; then
    echo "Please configure SERVICE_NAME and SERVICE_PORT environment variables."
    echo "Exiting."
    exit 1
fi

gdb --batch -ex "target remote $SERVICE_NAME:$SERVICE_PORT" -ex "generate-core-file"

# Wait for stop signal from Controller.
read