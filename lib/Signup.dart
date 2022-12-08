import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 27, 92, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
             TextField(
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.black
               ),
               cursorColor: Colors.black,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                icon: Icon(Icons.person),
                iconColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(20),),
                ),
              ),
            ),
          SizedBox(
            height: 35.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black
            ),
            obscureText: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              icon: Icon(Icons.lock),
              iconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius:BorderRadius.all(Radius.circular(20),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
