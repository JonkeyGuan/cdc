#!/bin/sh

curl -i -X DELETE -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:28083/connectors/inventory-connector

echo "\n-----------------"
curl http://localhost:28083/connectors/
