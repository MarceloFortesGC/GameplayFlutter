import 'package:flutter/material.dart';

class LogoRounded extends StatelessWidget {
  const LogoRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(
            'assets/images/logo.jpeg',
            width: MediaQuery.of(context).size.width * 0.5,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
