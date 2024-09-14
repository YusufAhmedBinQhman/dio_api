import 'package:dio_api/core/views/screen/ProductsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(child: Scaffold(body:  ProductsScreen())),);
  }
}