# 🏰 랜덤 면접 디펜스 🏰
<b>랜면디</b>는 터미널을 열 때마다 랜덤한 웹 개발 기술면접 질문을 노출하는 서비스입니다

![rid test](https://user-images.githubusercontent.com/55067949/215311898-eb0110ea-e381-4aad-a714-b0436c66ebc6.gif)

## 웹 버전 사용법 - 권장!
해당 레포가 업데이트 될 때마다 pull할 필요가 없습니다
받은 질문을 서버가 기억하고 알아서 답변합니다

<b>🚨 베타버전이기 때문에 도메인 주소가 변경될 수도 있습니다</b>

<b>1. 해당 레포의 webQuery.sh 파일을 `~/rid/` 위치에 추가하고 실행 권한을 줍니다</b>
- `chmod +x webQuery.sh`

<b>2. 터미널 설정 파일에 원하는 퀴즈를 등록합니다</b>
- mac : `vi ~/.zshrc`로 접속 후 마지막 줄에 다음 문장을 추가한 후 저장합니다

```bash
alias rid='~/rid/webQuery.sh'
echo "정답 찾는 법 : rid -r"
rid
```

<b>curl에 들어갈 문장을 수정해 원하는 문제 유형을 선택할 수도 있습니다</b>

- backend + frontend + tip 질문을 받고싶은 경우 (권장)
`rid`
- backend 질문만 받고싶은 경우
`rid -b`
- frontend 질문만 받고싶은 경우
`rid -f`

위 명령어를 직접 입력해서 원할 때 질문을 받을 수도 있습니다

<b>3. alias를 등록합니다</b>
```bash
source ~/.zshrc
```

## 로컬 버전 사용법
**1. 레포를 클론합니다**
```
git clone https://github.com/JerryK026/Random-Interview-Defense.git ~/rid
```

**2. sh ./init_zsh.sh로 쉘 파일을 실행합니다**
💡 `~.zshrc`에 설정 정보를 등록하니 추후에 문제 발생시 해당 부분을 지워주세요.

💡 Powerlevel10k 사용 시 instant prompt 옵션을 종료해야 콘솔 출력 경고가 발생하지 않습니다 [참고](https://github.com/JerryK026/random-interview-defense/issues/7)

## 나만의 질문 업로드 가이드
`db.json` 파일에 질문 / 답변이 등록되어 있습니다. 양식에 맞게 커스텀 질문 / 답변을 추가할 수 있습니다.


## 질문 리스트
질문 리스트는 [위키](https://github.com/JerryK026/random-interview-defense/wiki)에서 확인할 수 있습니다!

외에도 원하는 자료나 검수할 내용이 있다면 [이슈](https://github.com/JerryK026/random-interview-defense/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) 탭에서 자유롭게 신청해 주세요

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
