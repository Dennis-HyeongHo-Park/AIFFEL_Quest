import 'dart:async';

/**
 * 1. 크게 작업시간과 휴식시간으로 구분됩니다. (v)
 * 2. 25분 작업, 5분 휴식을 한 회차(사이클)로 판단합니다. (v)
 * 3. 단, 4회차는 25분 작업, 15분 휴식을 진행합니다. (v)
  - hint : 시간 측정은 Timer.periodic 키워드로 검색!! (v)
 */

String formatTime(int time) {
  return time.toString().padLeft(2, '0');
}

abstract class OperateTimer {
  void startTimer();
  void cancelTimer();
}

class PomodoroCycle {
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
  }
}

class CustomTimer implements OperateTimer {
  final PomodoroCycle cycle;
  bool isBreakTime = false;
  int round = 0;
  int workingTime;
  int breakTime;

  late Timer timer;

  CustomTimer({required this.cycle})
      : workingTime = cycle.workDuration,
        breakTime = cycle.shortBreakDuration;

  @override
  void startTimer() {
    print("뽀모도로 타이머를 시작합니다.");

    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (!isBreakTime) {
        handleWorkTime();
      } else {
        handleBreakTime();
      }
    });
  }

  @override
  void cancelTimer() {
    timer.cancel();
  }

  void handleWorkTime() {
    if (workingTime == cycle.workDuration) {
      print("${round + 1}회차 시작");
    }

    if (workingTime > 0) {
      workingTime -= 1;
      print(cycle.formatRemainingTime(workingTime));
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
    print(cycle.formatRemainingTime(breakTime));

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
      workDuration: 1500, shortBreakDuration: 300, longBreakDuration: 900);

  final pomodoroTimer = CustomTimer(cycle: pomodoroCycle);
  pomodoroTimer.startTimer();
}
