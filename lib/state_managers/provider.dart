import 'package:bloc_patter/state_managers/bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  Provider({super.key, required super.child});

  final bloc = Bloc();
  @override
  bool updateShouldNotify(oldWidget) => true;

  static Bloc of(context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
