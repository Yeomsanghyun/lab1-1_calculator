#!/bin/bash

# 내부 함수 정의
execute_command() {
    echo "함수 안으로 들어왔음"
    
    # 리눅스 명령어 실행
    result=$(ls "$@")

    # 결과 출력
    echo "$result"
}

# 메인 프로그램 시작
echo "프로그램을 시작합니다."

# 내부 함수 호출
execute_command

# 프로그램 종료
echo "프로그램을 종료합니다."
