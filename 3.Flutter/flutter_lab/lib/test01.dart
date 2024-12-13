import 'dart:async';

void main() {
  Timer? myTimer;

  // 타이머 시작
  myTimer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
    print('타이머 실행 중...');

    if (timer.tick == 25) {
      // 3번 실행 후 취소
      print('타이머 중지');
      myTimer?.cancel();
    }
  });
}
