// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';
import 'package:flutter_application_1/page/checkout.dart';
import 'package:flutter_application_1/page/detils_screen.dart';
import 'package:flutter_application_1/proveder/cart.dart';

import 'package:provider/provider.dart';

class Productandprice extends StatelessWidget {
  const Productandprice({super.key});

  @override
  Widget build(BuildContext context) {
    final numcartt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${numcartt.selectesproducts.length}",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(211, 164, 255, 193),
                  shape: BoxShape.circle),
            ),
            IconButton(onPressed: () {
               Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Checkout(),));
                  
            }, icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11.0),
          child: Text(
            "\$ ${numcartt.pprice}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
