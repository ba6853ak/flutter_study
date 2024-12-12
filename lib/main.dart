import 'package:flutter/material.dart';
import 'package:started/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: routes,
      // 페이지 이동은 /#/about

    );
  }
}

