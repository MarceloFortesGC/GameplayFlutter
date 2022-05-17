import 'package:flutter/material.dart';

import '../controllers/auth_controller.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  final controller = AuthController();

  @override
  void initState() {
    super.initState();
    controller.password = TextEditingController();
    controller.passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
      child: TextFormField(
        controller: controller.password,
        obscureText: !controller.passwordVisibility,
        decoration: InputDecoration(
          labelText: 'Senha',
          labelStyle: const TextStyle(
            color: Color(0xFF57636C),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          hintText: 'Digite a sua senha',
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
          suffixIcon: InkWell(
            onTap: () => setState(
              () => controller.passwordVisibility =
                  !controller.passwordVisibility,
            ),
            child: Icon(
              controller.passwordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: const Color(0xFF95A1AC),
              size: 22,
            ),
          ),
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
