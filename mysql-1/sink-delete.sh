#!/bin/sh

curl -i -X DELETE -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:18083/connectors/jdbc-sink-mysql-2

echo "\n-----------------"
curl http://localhost:18083/connectors/
