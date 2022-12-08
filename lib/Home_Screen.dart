import 'package:flutter/material.dart';
import 'dart:async';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'Signup');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 27, 92, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 125.0,
                child: Image.asset('Images/logo.png')),
          ),
          Column(
            children: const [
              SafeArea(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Hii",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Welcome To',
                  style: TextStyle(color: Colors.white, fontSize: 35.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Sound Soul',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
