#!/bin/sh

# 인자의 개수가 3이 아닌 경우 오류 메시지 출력 후 종료
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number1> <operator> <number2>"
    exit 1
fi

# 입력 인자를 변수에 저장
num1="$1"
operator="$2"
num2="$3"

# 연산자에 따른 계산 수행
case "$operator" in
    "+")
        result=$(($num1 + $num2))
        ;;
    "-")
        result=$(($num1 - $num2))
        ;;
    *)
        echo "지원하지 않는 연산자입니다: $operator"
        exit 1
        ;;
esac

# 결과 출력
echo "결과: $result"

exit 0
