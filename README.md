# devContainer
## 내부에서 파일 생성 시
### 권한 부여
```bash
sudo chown -R root:root ${디렉토리명}
sudo chmod -R 0777 ${디렉토리명}
```
- 위와 같이 설정해주어야 리눅스에서 pull시 오류발생하지 않음

#### 예시
```bash
sudo chown -R root:root 04
sudo chmod -R 0777 04
```

# Linux 설정
## 초기 설정
### ENV 설정
```bash
vi set-env-kind_dir.sh
./set-env-kind_dir.sh
```
- 반드시 내부에서 kind-config까지의 경로를 변경해줄 것
- 해당 shell 사용 시 `$KIND_DIR` 환경변수 사용 가능

<br/>

```bash
$KIND/create-cluster.sh
```
- ENV 설정 이후 위와 같이 cluster 생성 가능

<br/>

## Shell

### 권한 확인하기
```bash
git ls-files --stage | grep ${shell 파일 명}
```
- 100644 → 읽기/쓰기 일반 파일 (실행권한 없음)
- 100755 → 실행 권한이 있는 파일

### 권한 부여하기
```bash
git update-index --add --chmod=+x ${shell 파일 명}
```
- shell 파일 추가 생성 시 위와 같이 권한 부여하고 push하기

<br/>

### 권한 제거하기
```bash
git update-index --chmod=-x ${shell 파일 명}
```
- 위와 같이 권한 제거할 수 있음

---

<br/>

## Trunk
### Lint 실행
```
trunk check
```

<br/>

### Trunk 캐시 초기화
```
trunk cache clear --all
```
