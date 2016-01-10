#!/bin/bash
set -e

id=$(docker create $1)
docker cp $id:/usr/local/bin/phantomjs bin/
docker rm -v $id >/dev/null
echo "Finished building bin/phantomjs. SHA-1 hash:"
sha1sum bin/phantomjs
