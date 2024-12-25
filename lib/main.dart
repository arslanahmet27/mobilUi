import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseemobil/LoginPages/KayitKontrol.dart';
import 'package:firebaseemobil/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return cartmodel();
      },
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Kayitkontrol(),
      ),
    );
  }
}
