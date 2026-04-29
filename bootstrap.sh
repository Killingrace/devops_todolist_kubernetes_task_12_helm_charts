#!/bin/bash

kind create cluster --config cluster.yml
kubectl taint nodes -l app=mysql app=mysql:NoSchedule
helm dependency build .infrastructure/todoapp/
helm install release .infrastructure/todoapp/