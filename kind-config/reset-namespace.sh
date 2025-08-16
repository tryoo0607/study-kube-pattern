#!/bin/bash

baseDir="$(dirname "$0")"

# 네임스페이스 존재 여부 확인
if kubectl get ns test --ignore-not-found >/dev/null 2>&1; then
    echo "Namespace 'test' found. Deleting..."
    kubectl delete ns test
else
    echo "Namespace 'test' not found. Skipping deletion."
fi

# default-settings.sh 실행
"$baseDir/default-settings.sh"