// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';
import 'package:flutter_application_1/page/checkout.dart';
import 'package:flutter_application_1/page/detils_screen.dart';
import 'package:flutter_application_1/proveder/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
 

  

  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final numcartt=Provider.of<Cart>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Detils(product: items[index ],))
                   );
                },
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgpath)),
                      ),
                    ],
                  ),
                  footer: GridTileBar(
                    trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {
                        numcartt.add(items[index]);
                      },
                      icon: Icon(Icons.add),
                    ),
                    
                    leading: Text("\$ 122"),
                    title: Text(""),
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/imge/12.jpg"),
                            fit: BoxFit.cover)),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/imge/145.jpg")),
                    accountName: Text("mohamed"),
                    accountEmail: Text("M.ict@gmil.com")),
                ListTile(
                  title: Text("My Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                      Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Home(),));
                  
                  },
                ),
                ListTile(
                  title: Text("My products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {
                      Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Checkout(),));
                  
                  },
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text("mohamed ibrahim")),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
         Productandprice()
       ],
        backgroundColor: appbargreen,
        title: Text("Home"),
        ),
      );
  }
}
