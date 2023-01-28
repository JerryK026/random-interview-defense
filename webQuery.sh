#!/bin/bash

TARGET="www.rid.r-e.kr"

if [ -z "$1" ]; then
  curl "$TARGET/request"
  exit 0
fi

if [ $1 == "-r" ]; then
  TARGET="${TARGET}/response"
  curl $TARGET
  exit 0
fi

if [ $1 == "-b" ]; then
    TARGET="${TARGET}/request/backend"
elif [ $1 == "-f" ]; then
    TARGET="${TARGET}/request/frontend"
fi

curl $TARGET
