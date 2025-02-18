#!/bin/sh -l

ls

./openstatus whoami --access-token $INPUT_API_KEY

exit 0
