$baseDir = $PSScriptRoot

$isExists = kubectl get ns test --ignore-not-found

if($isExists -ne $null) {
    Write-Host "Namespace 'test' found. Deleting..."
    kubectl delete ns test
} else {
    Write-Host "Namespace 'test' not found. Skipping deletion."
}

& "$baseDir\default-settings.ps1"