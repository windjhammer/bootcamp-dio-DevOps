#!/bin/bash

docker build -t dreno/backend-app2k8s:1.0 bakckend/.
docker build -t dreno/database-app2k8s:1.0 database/.

echo "build finalizado"