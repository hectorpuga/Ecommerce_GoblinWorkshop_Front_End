import 'package:ecommerce/src/screens/home.dart';
import 'package:ecommerce/src/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce',
        debugShowCheckedModeBanner: false,
        theme: TemaAplication.lightTheme,
        home: Home());
  }
}
