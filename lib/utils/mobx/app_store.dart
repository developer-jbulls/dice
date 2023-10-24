import 'dart:math';

import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppState = _AppStateBase with _$AppState;

abstract class _AppStateBase with Store {
  @readonly
  int _dice = Random().nextInt(6) + 1;

  @action
  void roll() {
    _dice = Random().nextInt(6) + 1;
  }
}
