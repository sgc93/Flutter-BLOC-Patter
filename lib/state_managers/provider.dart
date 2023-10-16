import 'package:bloc_patter/state_managers/bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .bloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
