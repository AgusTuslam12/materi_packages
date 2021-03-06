import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:materi_packages/screen/intro.dart';
import 'pages/home.dart';

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
      title: 'Materi Faker',
      home: Screen(),
    );
  }
}
