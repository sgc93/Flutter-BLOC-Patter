import 'dart:async';

import 'package:bloc_patter/state_managers/transformer.dart';

class Bloc with Transformer {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  // change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // add data
  Stream<String> get emailStream =>
      _emailController.stream.transform(emailValidator);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(passwordValidator);

  // close sinks
  disposeSink() {
    _emailController.sink.close();
    _passwordController.sink.close();
  }
}

final bloc = Bloc();
