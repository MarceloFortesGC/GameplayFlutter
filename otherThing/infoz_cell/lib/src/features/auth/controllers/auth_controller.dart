import 'package:flutter/material.dart';

class AuthController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController emailAddress;
  late TextEditingController password;
  late bool passwordVisibility;
}
