// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'dart:async';

import 'package:bolt_clone/screens/login.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Login(title: ''),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/4.jpg',
              ),
              const SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Rascom Deliveries',
                  style: TextStyle(
                    fontFamily: "ProductSans",
                    fontSize: 24,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
