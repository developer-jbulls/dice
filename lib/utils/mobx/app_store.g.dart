// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppStateBase, Store {
  Computed<int>? _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_AppStateBase.total'))
      .value;

  late final _$_diceLeftAtom =
      Atom(name: '_AppStateBase._diceLeft', context: context);

  int get diceLeft {
    _$_diceLeftAtom.reportRead();
    return super._diceLeft;
  }

  @override
  int get _diceLeft => diceLeft;

  @override
  set _diceLeft(int value) {
    _$_diceLeftAtom.reportWrite(value, super._diceLeft, () {
      super._diceLeft = value;
    });
  }

  late final _$_diceRightAtom =
      Atom(name: '_AppStateBase._diceRight', context: context);

  int get diceRight {
    _$_diceRightAtom.reportRead();
    return super._diceRight;
  }

  @override
  int get _diceRight => diceRight;

  @override
  set _diceRight(int value) {
    _$_diceRightAtom.reportWrite(value, super._diceRight, () {
      super._diceRight = value;
    });
  }

  late final _$_AppStateBaseActionController =
      ActionController(name: '_AppStateBase', context: context);

  @override
  void rollLeft() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.rollLeft');
    try {
      return super.rollLeft();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollRight() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.rollRight');
    try {
      return super.rollRight();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total}
    ''';
  }
}
