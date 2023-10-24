// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppStateBase, Store {
  late final _$_diceAtom = Atom(name: '_AppStateBase._dice', context: context);

  int get dice {
    _$_diceAtom.reportRead();
    return super._dice;
  }

  @override
  int get _dice => dice;

  @override
  set _dice(int value) {
    _$_diceAtom.reportWrite(value, super._dice, () {
      super._dice = value;
    });
  }

  late final _$_AppStateBaseActionController =
      ActionController(name: '_AppStateBase', context: context);

  @override
  void roll() {
    final _$actionInfo =
        _$_AppStateBaseActionController.startAction(name: '_AppStateBase.roll');
    try {
      return super.roll();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
