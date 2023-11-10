#!/bin/sh

# 인자의 개수가 2가 아닌 경우 오류 메시지 출력 후 종료
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <weight_in_kg> <height_in_m>"
    exit 1
fi

# 입력된 몸무게와 키를 변수에 저장
weight="$1"
height="$2"

# BMI 계산 (계산 결과를 정수로 변환)
bmi=$(echo "scale=2; $weight / ($height/100 * $height/100)" | bc)



# 비만 여부 판단
if [ "$(echo "$bmi >= 18.5 && $bmi < 23" | bc)" -eq 1 ]; then
    result="정상체중입니다."
elif [ "$(echo "$bmi < 18.5" | bc)" -eq 1 ]; then
    result="저체중입니다."
else
    result="과체중입니다."
fi

# 결과 출력
echo "BMI: $bmi"
echo "판정: $result"

exit 0
