#!/bin/bash

# 현재 디렉토리에서 files 폴더 내의 모든 텍스트 파일을 대상으로 반복합니다.
for file in files/*.txt; do
    # 파일 이름에서 첫 글자를 추출하고 소문자로 변환합니다.
    first_letter=$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')

    # 폴더를 만들거나 이미 있는 경우는 넘어갑니다.
    mkdir -p "$first_letter"

    # 파일을 해당 폴더로 이동합니다.
    mv "$file" "$first_letter/"
done

echo "모든 파일을 이동하였습니다."