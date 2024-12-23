import 'package:flutter/material.dart';

class Anaekran extends StatelessWidget {
  const Anaekran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Anaekran"),
            ],
          ),
        ),
      ),
    );
  }
}
