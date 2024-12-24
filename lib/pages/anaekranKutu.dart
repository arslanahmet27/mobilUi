import 'package:firebaseemobil/models/AnaekranKutuclass.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Anaekrankutu extends StatelessWidget {
  anaekran kutu;
  Anaekrankutu({super.key, required this.kutu});

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenwdith = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: _screenwdith * 0.8,
        height: _screenHeight * 0.1,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kutu.name,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        kutu.emoji,
                        size: 30,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _screenwdith * 0.8,
                  height: _screenHeight * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      kutu.urunismi,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Sepete Ekle",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      kutu.fiyat,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
