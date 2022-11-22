// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:flutter_application_1/shared/colors.dart';

class Detils extends StatefulWidget {

  Item product;
  Detils({required this.product});
  @override
  State<Detils> createState() => _DetilsState();
}

class _DetilsState extends State<Detils> {
  //const Detils({super.key});
bool isshowmore=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        actions: [
     Productandprice()
        ],
        backgroundColor: appbargreen,
        title: Text("Detils"),
      ),
   

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgpath),
            SizedBox(height: 11),
            Text("\$ ${widget.product.price}" ,style: TextStyle(fontSize:  20 ),),
            SizedBox(height: 11),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text("new",style: TextStyle(fontSize:  12 ),),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                )
             ,Row(
               children: [
                 Icon(Icons.star,
                 size: 30,
                 color: Color.fromARGB(255, 255, 191, 0 ),
                 ),
                 Icon(Icons.star,
                 size: 30,
                 color: Color.fromARGB(255, 255, 191, 0 ),
                 ),
                 Icon(Icons.star,
                 size: 30,
                 color: Color.fromARGB(255, 255, 191, 0 ),
                 ),
                 Icon(Icons.star,
                 size: 30,
                 color: Color.fromARGB(255, 255, 191, 0 ),
                 ),Icon(Icons.star,
                 size: 30,
                 color: Color.fromARGB(255, 255, 191, 0 ),
                 ),
               ],
             )
            ,SizedBox(width: 77,)
             ,Row(
              children: [
                Icon(Icons.edit_location,
                size: 23,
                color: Color.fromARGB(168, 3, 65, 27),
                ),
                SizedBox(width: 3,),
                Text("horse",style: TextStyle(fontSize: 19),),
              ],
             ),
             SizedBox(height: 16,),
              SizedBox(
                width: double.infinity ,
                child:
              
               Text("Detils :",style: TextStyle(fontSize: 19),
               textAlign: TextAlign.start,
               )),
              SizedBox(height: 16,),
              Text("horse, (Equus caballus), a hoofed herbivorous mammal of the family Equidae. It comprises a single species, Equus caballus, whose numerous varieties are called breeds. Before the advent of mechanized vehicles, the horse was widely used as a draft animal, and riding on horseback was one of the chief means of transportation.",
              style: TextStyle(fontSize: 18),
              maxLines:isshowmore? 3:null,
              overflow: TextOverflow.fade,
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    isshowmore=!isshowmore;
                  });
                },
                 child: Text(isshowmore? "show more":"show less"
                 ,style: TextStyle(fontSize: 19))),
              ],
            )
          ],
        ),
      ),
    );
  }
}