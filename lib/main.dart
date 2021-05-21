import 'package:MoorseCode/view/to-morse-view.dart';
import 'package:MoorseCode/view/to-alpha-view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Code Morse',
      initialRoute: "/tomorse",
      routes: {
        '/tomorse': (context) => ToMorseView(),
        '/toalpha': (context) => ToAlphaView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
