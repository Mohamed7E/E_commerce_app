import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/detils_screen.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:flutter_application_1/page/register.dart';
import 'package:flutter_application_1/proveder/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}



class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
         home: Home(),
      ),
    );
  }
}