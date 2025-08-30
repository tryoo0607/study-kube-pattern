#!/bin/bash

kubectl taint nodes kind-worker dedicated=NoSchedule:NoSchedule
kubectl taint nodes kind-worker4 dedicated=NoExcute:NoExcute
