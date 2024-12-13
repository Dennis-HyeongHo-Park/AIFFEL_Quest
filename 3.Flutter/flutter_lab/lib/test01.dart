import 'dart:async';

void main() {
  const int workDuration = 25 * 60; // 작업 시간: 25분 (초 단위)
  const int breakDuration = 5 * 60; // 휴식 시간: 5분 (초 단위)
  bool isWorkTime = true; // 작업 시간인지 여부
  int remainingTime = workDuration; // 초기 남은 시간 (작업 시간)
  int cycleCount = 0; // 반복 횟수 추적

  Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
    if (remainingTime > 0) {
      int minutes = remainingTime ~/ 60; // 분 계산
      int seconds = remainingTime % 60; // 초 계산
      print('${isWorkTime ? "작업" : "휴식"} 시간 남음: $minutes분 $seconds초');
      remainingTime--;
    } else {
      if (isWorkTime) {
        print('작업 시간이 끝났습니다. 휴식 시간을 시작합니다!');
        isWorkTime = false;
        remainingTime = breakDuration;
      } else {
        print('휴식 시간이 끝났습니다. 작업 시간을 시작합니다!');
        isWorkTime = true;
        remainingTime = workDuration;
        cycleCount++;

        // 4번 반복 후 타이머 종료
        if (cycleCount == 4) {
          print('4번의 작업과 휴식이 끝났습니다. 타이머를 종료합니다!');
          timer.cancel(); // 타이머 종료
        }
      }
    }
  });
}
