import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class google_nav_bar extends StatelessWidget {
  void Function(int)? onTabChange;
  google_nav_bar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        child: GNav(
          color: Colors.grey.shade700,
          activeColor: Colors.black,
          tabBorderRadius: 16,
          tabBorder: Border.all(color: Colors.white),
          padding: EdgeInsets.all(30),
          tabBackgroundColor: Colors.white,
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          gap: 6,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Anasayfa",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Sepetim",
            ),
          ],
        ),
      ),
    );
  }
}
