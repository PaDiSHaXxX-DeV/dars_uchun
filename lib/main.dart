
import 'package:dars_uchun/dars.dart';
import 'package:dars_uchun/main_page.dart';
import 'package:dars_uchun/test.dart';
import 'package:dars_uchun/ttt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainpage(),
    );
  }
}
