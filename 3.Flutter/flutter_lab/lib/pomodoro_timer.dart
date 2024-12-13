import 'dart:async';

/**
 * 1. 크게 작업시간과 휴식시간으로 구분됩니다. (v)
 * 2. 25분 작업, 5분 휴식을 한 회차(사이클)로 판단합니다. (v)
 * 3. 단, 4회차는 25분 작업, 15분 휴식을 진행합니다. (v)
  - hint : 시간 측정은 Timer.periodic 키워드로 검색!! (v)
 */

String formatTime(int time) {
  return time.toString().padLeft(2, '0');  // timer 시간의 00 : 00 형태로 출력
}

abstract class OperateTimer {    // 시작타임, 킅나는 타임. 인터페이스 역할.  각 클레스의 역할 부여.
  void startTimer();
  void cancelTimer();
}

class PomodoroCycle {    //사이클과 관련된 함수, 변수 모아놓음
  final int workDuration;
  final int shortBreakDuration;
  final int longBreakDuration;

  PomodoroCycle(                       
      {required this.workDuration,
      required this.shortBreakDuration,
      required this.longBreakDuration});

  String formatRemainingTime(int remainingTime) {
    int minutes = remainingTime ~/ 60;                           
    int seconds = remainingTime % 60;
    return "${formatTime(minutes)}:${formatTime(seconds)}";
  }                                        // 분 : 초 를 계산.
}

class CustomTimer implements OperateTimer {
  final PomodoroCycle cycle;
  bool isBreakTime = false;         // 휴식시간일때 작동.
  int round = 0;                    // 4번 반복 0 부터시작 +=을 통해 증가.
  int workingTime;                     
  int breakTime;

  late Timer timer;

  CustomTimer({required this.cycle})      // cycle을 생성자로 만듬.
      : workingTime = cycle.workDuration,
        breakTime = cycle.shortBreakDuration;

  @override
  void startTimer() {
    print("뽀모도로 타이머를 시작합니다.");

    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!isBreakTime) {
        handleWorkTime();
      } else {
        handleBreakTime();
      }
    });
  }

  void cancelTimer() {
    timer.cancel();
  }

  void handleWorkTime() {
    if (workingTime == cycle.workDuration) {
      print("${round + 1}회차 시작");
    }

    if (workingTime > 0) {
      workingTime -= 1;
      String workingTimeMinute = formatTime(workingTime ~/ 60);
      String workingTimeSecond = formatTime(workingTime % 60);
      print("$workingTimeMinute:$workingTimeSecond");
    }

    if (workingTime == 0) {
      print("작업시간이 종료되었습니다. 휴식 시간을 시작합니다.");
      isBreakTime = true;
      breakTime =
          (round == 3) ? cycle.longBreakDuration : cycle.shortBreakDuration;
    }
  }

  void handleBreakTime() {
    breakTime -= 1;
    String breakTimeMinute = formatTime(breakTime ~/ 60);
    String breakTimeSecond = formatTime(breakTime % 60);
    print("$breakTimeMinute:$breakTimeSecond");

    if (breakTime == 0) {
      print("휴식시간이 종료되었습니다. 작업 시간을 시작합니다.");
      isBreakTime = false;
      workingTime = cycle.workDuration;
      round += 1;
      print("$round회차 끝!");

      if (round == 4) {
        round = 0;
      }
    }
  }
}

void main() {
  final pomodoroCycle = PomodoroCycle(
      workDuration: 5, shortBreakDuration: 2, longBreakDuration: 3);

  final pomodoroTimer = CustomTimer(cycle: pomodoroCycle);
  pomodoroTimer.startTimer();
}
