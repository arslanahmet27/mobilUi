import 'package:firebaseemobil/cart_model.dart';
import 'package:firebaseemobil/pages/anaekranKutu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              child: Consumer<cartmodel>(
                builder: (context, value, child) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.shopping_cart.length,
                    itemBuilder: (context, index) {
                      return Anaekrankutu(
                        name: value.shopping_cart[index][0],
                        emoji: value.shopping_cart[index][1],
                        urunismi: value.shopping_cart[index][3],
                        fiyat: value.shopping_cart[index][4],
                        onTap: () {
                          Provider.of<cartmodel>(context, listen: false)
                              .addspetimEkle(index);
                        },
                        resim: value.shopping_cart[index][2],
                      );
                    },
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
