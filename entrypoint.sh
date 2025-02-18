#!/bin/sh -l

if [ -z "$INPUT_API_KEY" ]; then
    /home/openstatus/openstatus run --access-token $INPUT_API_KEY
else
    /home/openstatus/openstatus run --access-token $INPUT_API_KEY --config $INPUT_CONFIG_PATH
fi

if [ $? -eq 0 ]
then
    echo "OpenStatus run successfully"
    exit 0
else
    echo "OpenStatus run failed"
    exit 1
fi
