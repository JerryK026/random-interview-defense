# 🏰 랜덤 면접 디펜스 🏰
<b>랜면디</b>는 터미널을 열 때마다 랜덤한 웹 개발 기술면접 질문을 노출하는 서비스입니다

<img width="588" alt="image" src="https://user-images.githubusercontent.com/55067949/211290409-ce0992db-16b6-4fee-baff-f227512e829b.png">

## 사용법
<b>1. 레포를 클론합니다</b>
```
git clone https://github.com/JerryK026/Random-Interview-Defense.git ~/RID
```

<b>2. fortune 명령어를 설치합니다</b>
- brew
```
brew install fortune
```
- ubuntu
```
apt-get update
apt-get install fortune-mod
```

<b>3. 터미널 설정 파일에 원하는 퀴즈를 등록합니다</b>
- mac : `vi ~/.zshrc`로 접속 후 마지막 줄에 다음 문장을 추가한 후 저장합니다
- ubuntu : `vi ~/.bashrc`로 접속 후 마지막 줄에 다음 문장을 추가한 후 저장합니다

```bash
echo "정답 찾는 법 : RID [b or f] 퀴즈번호"
fortune ~/RID/quiz
alias RID='~/RID/query.sh'
```

<b>4. alias를 등록합니다</b>
- mac
```bash
source ~/.zshrc
```

- ubuntu
```bash
source ~/.bashrc
```

💡 vi환경에서 shift + g를 누르면 파일 맨 마지막 줄로 이동합니다

💡 Powerlevel10k 사용 시 instant prompt 옵션을 종료해야 콘솔 출력 경고가 발생하지 않습니다 [참고](https://github.com/JerryK026/random-interview-defense/issues/7)

## 퀴즈 파일 선택 가이드
- 백엔드 질문만 원할 시 : `fortune ~/RID/quiz/backend.fortune`
- 프론트엔드 질문만 원할 시 : `fortune ~/RID/quiz/frontend.fortune`
- 프로그래밍 팁만 원할 시 : `fortune ~/RID/quiz/tip.fortune`
- 전체 질문 + 팁을 원할 시 : `fortune ~/RID/quiz`

## 나만의 질문 업로드 가이드
1. 원하는 타겟 파일(`~.fortune`)을 열어 면접 질문 추가한 후, `%`기호로 구분합니다
2. `sh ~/RID/build.sh` 명령어로 `.dat` 포맷 파일을 생성합니다
3. answer 디렉터리에서 원하는 주제 폴더에 들어가서 `문제번호.txt`로 저장합니다

## 질문 리스트
질문 리스트는 [위키](https://github.com/JerryK026/random-interview-defense/wiki)에서 확인할 수 있습니다!

## 기여 가이드
면접 질문 / 팁 / 답안에 대한 컨텐츠 추가 혹은 피드백 모두 적극 환영합니다!
기여 시, 해당 자료에 기여해 주신 분들의 github id를 추가해 드립니다 :D
- Issue로 기여
   1. 새로운 이슈를 발행하고 `🏆 새 자료`, `🚨 검수가 필요해요` 등 상황에 맞는 라벨을 부착합니다
   2. 수정 / 피드백의 경우 이슈 코멘트에 컨텐츠 내용 변경에 대한 이유를 추가적으로 기술합니다
- Pull request로 기여
   1. 레포를 추가한 뒤 `나만의 질문 업로드 가이드` 양식에 맞추어 자료를 추가한 뒤, 문제 혹은 팁 마지막 줄에 출처와 자신의 github id를 적습니다
      - ex) 출제자 : JerryK026 | 출처 : xxx
   2. 커밋 메세지 양식은 다음과 같습니다
      - 새 자료 : `new-content : [backend / frontend / tip] [자료 번호] 자료 설명`
      - 자료 수정 : `fix-content : [backend / frontend / tip] [자료 번호] 자료 설명`
   3. PR 요청을 보내면서 수정 / 피드백의 경우 PR 코멘트에 컨텐츠 내용 변경에 대한 이유를 추가적으로 기술합니다
