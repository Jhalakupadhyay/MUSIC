import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 230, 150, 1),
      body: Stack(
        children: [
              Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 125.0,
                child: Image.asset('Images/logo.png')

                ),
              ),
          Column(
            children: const [
              SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Hii",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48.0,
                  ),),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Welcome To',style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0
                ),),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Sound Soul',style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                ),),
              )
            ],
          ),
        ],
      ),
    );
  } //255,230,150
}
