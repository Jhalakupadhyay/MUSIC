import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("HII!!!!!"),
      ),
      body: TextButton(onPressed: () {
        final user = _auth.signOut();
        Navigator.pushNamed(context, 'Home');
      }, child: Text('Press Me'),),
    );
  }
}
