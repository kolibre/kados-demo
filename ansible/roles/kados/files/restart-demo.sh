#!/bin/bash

cd /opt/kados/kados-demo
docker compose down
echo "y" | docker volume prune
docker compose up -d
./add-demo-data.sh
