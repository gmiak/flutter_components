import 'package:flutter/material.dart';
import 'package:flutter_components/screens/home_screen.dart';
import 'package:flutter_components/utils/colors.dart';

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
      title: 'Gmiak',
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: appBackgroundColor),
      home: const HomeScreen(),
    );
  }
}
