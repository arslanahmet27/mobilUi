import 'package:firebaseemobil/loginSecme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginsecme(),
    );
  }
}
