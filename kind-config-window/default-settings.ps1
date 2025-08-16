$baseDir = $PSScriptRoot

kubectl apply -f "$baseDir\namespace-test.yaml"
kubectl apply -f "$baseDir\default-quota.yaml"
kubectl apply -f "$baseDir\default-limit-range.yaml"