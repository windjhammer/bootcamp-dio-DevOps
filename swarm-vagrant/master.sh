#!/bin/bash
sudo docker swarm init --advertise-addr=172.16.0.200
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh