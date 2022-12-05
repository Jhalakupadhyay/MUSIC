import 'package:flutter/material.dart';
import 'package:soundsoul/Home_Screen.dart';
import 'package:soundsoul/Signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'Home',
      routes: {
        'Home' : (context) => Home(),
        'Signup' : (context) => Signup(),
      },
    );
  }
}
