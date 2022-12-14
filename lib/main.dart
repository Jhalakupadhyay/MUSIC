import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soundsoul/Home_Screen.dart';
import 'package:soundsoul/LOGIN.dart';
import 'package:soundsoul/Music1.dart';
import 'package:soundsoul/PLayer.dart';
import 'package:soundsoul/playlist.dart';
import 'package:soundsoul/Signup.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        'Login' : (context) => Login(),
        'Page1' : (context) => Page1(),
        'Player' : (context) => Player(),
        'Playlist' : (context) => playlist(),
      },
    );
  }
}
