#!/bin/bash

baseDir="$(dirname "$0")"

kubectl apply -f "$baseDir/namespace-test.yaml"

kind create cluster --config "$baseDir/kind-cluster-config.yaml"