import 'package:ekart/pages/cart_page.dart';
import 'package:ekart/pages/product_page.dart';
import 'package:ekart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: MyApp(),
      ),
      );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/products",
      routes: {
        "/products": (context) => ProductsPage(),
        "/cart": (context) => CartPage(),
      },
    );
  }
}
