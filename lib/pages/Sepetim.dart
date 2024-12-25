import 'package:firebaseemobil/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Consumer<cartmodel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(12),
                    itemCount: value.shopping_cart.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              value.shopping_cart[index][2],
                              height: 45,
                            ),
                            title: Text(
                              value.shopping_cart[index][0],
                            ),
                            subtitle: Text(
                              "\$" + value.shopping_cart[index][4],
                            ),
                            trailing: IconButton(
                              onPressed: () =>
                                  Provider.of<cartmodel>(context, listen: false)
                                      .removeSepetim(index),
                              icon: Icon(Icons.cancel),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
