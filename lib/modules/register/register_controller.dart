import 'package:blog/shared/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  AuthService auth = AuthService();
}