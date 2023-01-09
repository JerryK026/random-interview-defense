#!/bin/bash

if [ $# -ne 2 ]
then
  echo "정답 질의 포맷이 잘못되었습니다!"
  echo "백엔드 정답 검색 : sh ~/RID/query.sh [b or backend] 퀴즈번호"
  echo "프론트엔드 정답 검색 : sh ~/RID/query.sh [f or frontend] 퀴즈번호"
  exit 1
fi

TARGET=0
if [ $1 == "b" -o $1 == "backend" ]
then
  TARGET="backend"
fi

if [ $1 == "f" -o $1 == "frontend" ]
then
  TARGET="frontend"
fi

if [ ${TARGET} == 0 ]
then
  echo "정답 질의 포맷이 잘못되었습니다!"
  echo "백엔드 정답 검색 : sh ~/RID/query.sh [b or backend] 퀴즈번호"
  echo "프론트엔드 정답 검색 : sh ~/RID/query.sh [f or frontend] 퀴즈번호"
  exit 1
fi

LOCATION="/$2/"
awk $LOCATION ~/RID/answer/$TARGET