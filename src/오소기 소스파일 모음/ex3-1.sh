#!/bin/sh

# 인자의 개수가 1이 아닌 경우 오류 메시지 출력 후 종료
if [ "$#" -ne 1 ]; then
    echo "사용법: $0 <숫자>"
    exit 1
fi

# 입력 인자를 변수에 저장
count="$1"

# "Hello world"를 지정된 횟수만큼 출력하는 루프
for i in $(seq "$count"); do
    echo "Hello world"
done

exit 0
