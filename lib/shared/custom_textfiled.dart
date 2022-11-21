

// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Mytextfiled extends StatelessWidget {
 final  TextInputType textInputTypee;
 final  bool ispassword;
 final String hinttext;

 Mytextfiled({super.key, 
required this.textInputTypee,
required this.ispassword,
required this.hinttext,

 });

  @override
  Widget build(BuildContext context) {
    return TextField(
       keyboardType: textInputTypee,
            obscureText: ispassword,
            decoration: InputDecoration(
              hintText: hinttext,
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
    );
  }
}