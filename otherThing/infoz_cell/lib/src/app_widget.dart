import 'package:flutter/material.dart';
import 'package:infoz_cell/src/features/auth/auth_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthPageWidget(
        key: Key("LoginScreen"),
      ),
    );
  }
}
