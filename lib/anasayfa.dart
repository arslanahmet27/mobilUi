import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseemobil/google_nav_bar.dart';
import 'package:firebaseemobil/pages/Sepetim.dart';
import 'package:firebaseemobil/pages/anaEkran.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final user = FirebaseAuth.instance.currentUser!;
  int _selectedindex = 0;
  void navigatebootombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Anaekran(),
    Sepetim(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
        title: Text(
          "Hoşgeldiniz",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(7),
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(
              Icons.logout_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: google_nav_bar(
        onTabChange: (index) => navigatebootombar(index),
      ),
      backgroundColor: Colors.grey.shade300,
      body: _pages[_selectedindex],
      drawer: Drawer(),
    );
  }
}
