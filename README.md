# 🏰 랜덤 면접 디펜스 🏰
<b>랜면디</b>는 터미널을 열 때마다 랜덤한 기술면접 질문을 노출하는 서비스입니다.

## 사용법
<b>1. 레포를 설치합니다.</b>
```
git clone https://github.com/JerryK026/Random-Interview-Defense.git ~/RID
```

<b>2. fortune 명령어를 설치합니다.</b>
- brew
```
brew install fortune
```
- ubuntu
```
apt-get install fortune-mod
```

<b>3. 터미널 설정 파일에 원하는 퀴즈를 등록합니다.</b>
- mac : `vi ~/.zshrc`로 접속 후 마지막 줄에 다음 문장을 추가한 후 저장합니다.
- unbuntu : `vi ~/.bashrc`로 접속 후 마지막 줄에 다음 문장을 추가한 후 저장합니다.


```bash
echo "정답 찾는 법 : sh ~/RID/query.sh [b or f] 퀴즈번호"
fortune ~/RID/quiz
```

💡 vi환경에서 shift + g를 누르면 파일 맨 마지막 줄로 이동합니다.


## 퀴즈 파일 선택 가이드
- 백엔드 질문만 원할 시 : `fortune ~/RID/quiz/backend.fortune`
- 프론트엔드 질문만 원할 시 : `fortune ~/RID/quiz/frontend.fortune`
- 프로그래밍 팁만 원할 시 : `fortune ~/RID/quiz/tip.fortune`
- 전체 질문 + 팁을 원할 시 : `fortune ~/RID/quiz`

## 나만의 질문 업로드 가이드
1. 원하는 타겟 파일(`~.fortune`)을 열어 면접 질문 추가한 후, `%`기호로 구분합니다.
2. `strfile target.fortune` 명령어로 `.dat` 포맷 파일을 생성합니다.
   - 백엔드 질문을 추가하고 싶은 경우 : `strfile ./quiz/backend.fortune`
   - 프론트엔드 질문을 추가하고 싶은 경우 : `strfile ./quiz/frontend.fortune`

## 기여 가이드