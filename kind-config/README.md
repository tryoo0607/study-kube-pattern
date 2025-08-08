## 환경
Windows 환경에서 진행하였으며, Powershell을 통해 kubectl, kind 등을 사용했습니다.


## 실행 순서
1. Kind Cluster 생성
```powershell
kind create cluster --config kind-cluster-config.yaml
```

2. 테스트 환경 구성용 리소스 적용
```powershell
./default-settings.ps1
```
- 아래 리소스들이 자동으로 추가됩니다.
    - namepace-test.yaml
    - default-quota.yaml

3. (선택 사항) 외부 CNI(Calico) 및 Ingress 설치
```powershell
./kube-network-config.ps1
```
- 해당 명령어의 경우 아직 사용해본적이 없어 테스트를 진행하지 않았습니다.
- 추후 필요하다 생각되면 수정할 예정입니다.


4. (작업 모두 마친 후) 클러스터 종료
```powershell
kind delete cluster
```

---

## Namespace Reset
```powershell
./reset-namespace.ps1
```
- 작업 중 namespace를 지우고 새롭게 올리는 경우 사용