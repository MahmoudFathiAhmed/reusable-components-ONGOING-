import 'package:flutter/material.dart';
import 'package:my_reusable_components/app_pract_1.dart';
import 'package:my_reusable_components/app_pract_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Default Widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AppTwo(),
    );
  }
}

