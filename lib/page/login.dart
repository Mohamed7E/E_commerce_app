// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/custom_textfiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(
          children: [
           const SizedBox(height: 64,),
            Mytextfiled(
              textInputTypee :TextInputType.emailAddress ,
              ispassword: false,
              hinttext: "Enter email ",
            ),
          const SizedBox(height: 33,),
          Mytextfiled(
            textInputTypee : TextInputType.text,
              ispassword: true,
              hinttext: "enter password",
          ),
        ],
        ),
      ),
    );
  }
}
