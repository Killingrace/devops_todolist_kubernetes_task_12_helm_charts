#!/bin/bash

kind create cluster --config cluster.yml
kubectl taint nodes -l app=mysql app=mysql:NoSchedule
helm install release helm-chart/todoapp/