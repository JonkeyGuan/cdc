#!/bin/sh

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:28083/connectors/ -d @sink.json

echo "\n-----------------"
curl http://localhost:28083/connectors/
