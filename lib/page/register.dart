// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/shared/constants.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(33.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: decorationtextfiled.copyWith(
                    hintText: "Enter username ",
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationtextfiled.copyWith(
                    hintText: "Enter email ",
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: decorationtextfiled.copyWith(
                    hintText: "Enter password ",
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Regster",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BINgreen),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have account",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
