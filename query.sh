#!/bin/bash

if [ $# -ne 2 ]; then
  echo "정답 질의 포맷이 잘못되었습니다!"
  echo "백엔드 정답 검색 : rid [b or backend] 퀴즈번호"
  echo "프론트엔드 정답 검색 : rid [f or frontend] 퀴즈번호"
  exit 1
fi

TARGET=
case $1 in
  "b" | "backend" ) TARGET="backend";;
  "f" | "frontend" ) TARGET="frontend";;
  * ) echo "정답 질의 포맷이 잘못되었습니다!"
      echo "백엔드 정답 검색 : rid [b or backend] 퀴즈번호"
      echo "프론트엔드 정답 검색 : rid [f or frontend] 퀴즈번호"
      exit 1
esac

NUMBER="$2"
cat ~/rid/answer/$TARGET/$NUMBER.txt