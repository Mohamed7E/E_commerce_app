// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/proveder/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final numcartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: Text("ChockOut"),
        actions: [Productandprice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: numcartt.selectesproducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(numcartt.selectesproducts[index].name),
                      subtitle: Text(
                          "${numcartt.selectesproducts[index].price}-${numcartt.selectesproducts[index].location}"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            numcartt.selectesproducts[index].imgpath),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          numcartt.delet(numcartt.selectesproducts[index]);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "pay \$${numcartt.pprice} ",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BINpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
          )
        ],
      ),
    );
  }
}
