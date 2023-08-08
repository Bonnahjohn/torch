// ignore_for_file: depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:torch/pages/splash.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    title: '',
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TorchController();
  bool fast = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Spacer(
              flex: 6,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  controller.toggle();
                  setState(() {
                    fast = !fast;
                  });
                },
                child: Image.asset(
                  fast ? 'assets/light.png' : 'assets/lamp.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Center(
              child: Text(
                fast ? 'ON' : 'OFF',
                style: TextStyle(
                    color: fast ? Colors.red : Colors.black, fontSize: 25),
              ),
            ),
            Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
