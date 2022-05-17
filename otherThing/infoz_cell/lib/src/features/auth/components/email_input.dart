import 'package:flutter/material.dart';

import '../controllers/auth_controller.dart';

class EmailInput extends StatefulWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  final controller = AuthController();

  @override
  void initState() {
    super.initState();
    controller.emailAddress = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
      child: TextFormField(
        controller: controller.emailAddress,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Documento',
          labelStyle: const TextStyle(
            color: Color(0xFF57636C),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          hintText: 'Digite o número do seu documento',
          hintStyle: const TextStyle(
            color: Color(0xFF57636C),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
        ),
        style: const TextStyle(
          color: Color(0xFF1D2429),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
