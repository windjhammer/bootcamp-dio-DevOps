#!/bin/bash

docker build -t dreno/backend-app3k8s:1.0 bakckend/.
docker build -t dreno/database-app3k8s:1.0 database/.

echo "build finalizado"

kubectl apply -f ./services.yml
kubectl apply -f ./deployment.yml

echo "serviços iniciados no kubernetes e deploy realizado"