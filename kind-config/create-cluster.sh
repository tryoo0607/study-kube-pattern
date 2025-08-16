#!/bin/bash

baseDir="$(dirname "$0")"

kind create cluster --config "$baseDir/kind-cluster-config.yaml"