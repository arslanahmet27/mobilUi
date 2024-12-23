import 'package:flutter/material.dart';

class Metinkutusu extends StatelessWidget {
  final String name;
  final IconData emoji;
  final controller;
  final obscuretext;

  const Metinkutusu(
      {super.key,
      required this.controller,
      required this.emoji,
      required this.name,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: obscuretext,
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: name,
            suffixIcon: Icon(emoji),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }
}
