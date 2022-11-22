import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';

class Cart with ChangeNotifier {
  List selectesproducts = [];

  double pprice = 0;
  add(Item product) {
    selectesproducts.add(product);
    pprice += product.price.round();
    notifyListeners();
  }

  delet(Item product){

    selectesproducts.remove(product);
     pprice -= product.price.round();
    notifyListeners();
  }
}
