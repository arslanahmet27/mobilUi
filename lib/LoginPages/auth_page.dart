import 'package:firebaseemobil/LoginPages/kayitOl.dart';
import 'package:firebaseemobil/LoginPages/login.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void tooglescren() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(
        showloginpage: tooglescren,
      );
    } else {
      return Kayitol(
        showkayitol: tooglescren,
      );
    }
  }
}
