// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, sized_box_for_whitespace

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:torch/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => MyApp())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(
            flex: 6,
          ),
          Center(
              child: Image.asset(
            'assets/torch.png',
            width: 100,
            height: 100,
          )),
          Spacer(
            flex: 3,
          ),
          Center(
            child: Text(
              'From',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              color: Colors.white24,
              width: 190,
              height: 60,
              child: Card(
                elevation: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/bear.png',
                      width: 60,
                      height: 60,
                    ),
                    Text(
                      'TENACE',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
