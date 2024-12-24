import 'package:firebaseemobil/models/AnaekranKutuclass.dart';
import 'package:firebaseemobil/pages/anaekranKutu.dart';
import 'package:flutter/material.dart';

class Anaekran extends StatelessWidget {
  const Anaekran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Merhaba Aramak İstediğiniz Şeyi Aşşağı Giriniz",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Ara",
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Anaekrankutu(
                    kutu: anaekran(
                      name: "Kahve",
                      emoji: Icons.favorite,
                      urunismi: "Kahve",
                      fiyat: "250",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
