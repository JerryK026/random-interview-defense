#!/bin/bash

file_path="$(pwd)"
file_name="rid"

chmod +x "${file_path}/${file_name}"

echo "\n# 랜면디 정보 등록 시작" >> ~/.zshrc
echo "echo '랜면디 명령어 정보 : rid -h'" >> ~/.zshrc
echo "alias rid='${file_path}/${file_name}'" >> ~/.zshrc
echo "rid" >> ~/.zshrc
echo "# 랜면디 정보 등록 끝\n" >> ~/.zshrc
echo "랜면디 초기화 완료!"