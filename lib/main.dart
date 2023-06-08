import 'package:ecommerce/src/screens/home.dart';
import 'package:ecommerce/src/services/products_mercadolibre.dart';
import 'package:ecommerce/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductosMercadoLibre(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
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
