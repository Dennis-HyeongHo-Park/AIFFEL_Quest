import 'dart:async';

void main() {
  Timer.periodic(const Duration(seconds: 1), (t) {
    print('Current time : ${DateTime.now()}');
  });
}
