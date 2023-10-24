import 'dart:math';

import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppState = _AppStateBase with _$AppState;

abstract class _AppStateBase with Store {
  @readonly
  int _diceLeft = Random().nextInt(6) + 1;

  @readonly
  int _diceRight = Random().nextInt(6) + 1;

  @computed
  int get total => _diceLeft + _diceRight;

  @action
  void rollLeft() {
    _diceLeft = Random().nextInt(6) + 1;
  }
  @action
  void rollRight() {
    _diceRight = Random().nextInt(6) + 1;
  }
}
