import 'package:flutter/material.dart';

class LoginHero extends StatelessWidget {
  const LoginHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/background.png',
          ).image,
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              'assets/images/character.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ).image,
          ),
        ),
      ),
    );
  }
}
