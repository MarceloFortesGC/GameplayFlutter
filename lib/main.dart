import 'package:flutter/material.dart';
import 'package:gameplay_flutter/src/features/login/login.dart';
// import 'package:gameplay_flutter/views/login_budget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: LoginWidget(
        key: Key('Login'),
      ),
    );
  }
}
