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
        title: Text('Signup'),
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(
              height: 35.0,
            ),
            Hero(child: Image.asset('Images/logo.png'),tag: 'ani',),
               const SizedBox(
                 height: 45.0,
               ),
               const TextField(
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.black
                 ),
                 cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Enter Mail Id',
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.person),
                  iconColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(20),),
                  ),
                ),
              ),
            const SizedBox(
              height: 35.0,
            ),
            const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              obscureText: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Colors.black54),
                filled: true,
                fillColor: Colors.white,
                icon: Icon(Icons.lock),
                iconColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(20),),
                ),
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              height: 40.0,
              width: 180.0,
              margin: EdgeInsets.only(left: 40.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green,
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'Login');
                },
                child: Text('SIGNUP',style: TextStyle(color: Colors.black),),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
