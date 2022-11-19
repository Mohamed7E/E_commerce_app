// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(
          children: [
            SizedBox(height: 64,),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "enter your password : ",
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
          )
        ]),
      ),
    );
  }
}
