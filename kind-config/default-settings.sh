#!/bin/bash

baseDir="$(dirname "$0")"

kubectl apply -f "$baseDir/namespace-test.yaml"
kubectl apply -f "$baseDir/default-quota.yaml"
kubectl apply -f "$baseDir/default-limit-range.yaml"