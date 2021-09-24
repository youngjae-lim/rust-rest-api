#!/usr/bin/env bash

# wait for the database server to become available
dbmate wait

# create the database (if it does not already exist) and run any pending migrations
dbmate up

echo "Done"

exec "$@"