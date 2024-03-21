import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled10/models/cart.dart';
import 'package:untitled10/pages/cart_page.dart';
import 'package:untitled10/pages/good_intro_page.dart';
import 'package:untitled10/pages/introPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (Context) => Cart(),
      builder: (context, child) => const MaterialApp(
             debugShowCheckedModeBanner: false,
            initialRoute: '/',
            home: IntroPage(),
      ),
    );

  }
}
