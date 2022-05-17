import 'package:flutter/material.dart';
import 'package:infoz_cell/src/features/auth/components/auth_btn.dart';
import 'package:infoz_cell/src/features/auth/components/email_input.dart';
import 'package:infoz_cell/src/features/auth/components/password_input.dart';
import 'package:infoz_cell/src/shared/components/logo_rounded.dart';

import 'controllers/auth_controller.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({required Key key}) : super(key: key);

  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  final controller = AuthController();

  @override
  void initState() {
    super.initState();
    controller.emailAddress = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      backgroundColor: const Color(0xFFF1F4F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const LogoRounded(),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 140,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF1F4F8),
                            ),
                            alignment: const AlignmentDirectional(-1, 0),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xFF090F13),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text(
                            'Digite as suas credenciais para entrar',
                            style: TextStyle(
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const EmailInput(),
                    const PasswordInput(),
                  ],
                ),
              ),
              const AuthBtn()
            ],
          ),
        ),
      ),
    );
  }
}
