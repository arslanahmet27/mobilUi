import 'package:flutter/material.dart';

class cartmodel extends ChangeNotifier {
  final List shopping_cart = [
    [
      "orta Kahve",
      Icons.favorite,
      "lib/images/pexels-sedanur-kunuk-78972032-29866942.jpg",
      "kahve",
      "250"
    ],
    [
      "ortanca kahve",
      Icons.favorite,
      "lib/images/pexels-sedanur-kunuk-78972032-29866942.jpg",
      "kahe",
      "250"
    ],
    [
      "Küçük Kahve",
      Icons.favorite,
      "lib/images/pexels-sedanur-kunuk-78972032-29866942.jpg",
      "kahve",
      "250"
    ],
    [
      "Büyük Kahve",
      Icons.favorite,
      "lib/images/pexels-sedanur-kunuk-78972032-29866942.jpg",
      "kahve",
      "250"
    ],
  ];

  List _Sepetim = [];
  get _shoppingcart => shopping_cart;

  get Sepetim => _Sepetim;

  void addspetimEkle(int index) {
    _Sepetim.add(
      _shoppingcart[index],
    );
    notifyListeners();
  }

  void removeSepetim(int index) {
    _Sepetim.removeAt(index);
    notifyListeners();
  }

  String collection() {
    double totalPrice = 0;
    for (var i = 0; i < _Sepetim.length; i++) {
      totalPrice += double.parse(_Sepetim[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
