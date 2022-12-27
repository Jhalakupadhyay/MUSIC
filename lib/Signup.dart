import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _auth = FirebaseAuth.instance;
  String mail = "";
  var pass;
  var pass2;
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
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 15.0),
                 child:  TextField(
                   textAlign: TextAlign.center,
                   style: const TextStyle(
                     color: Colors.black
                   ),
                   cursorColor: Colors.black,
                  decoration: const InputDecoration(
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
                   onChanged:(value){mail = value;},
              ),
               ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child:  TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                ),
                obscureText: true,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
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
                onChanged: (value){pass = value;},
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child:  TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                ),
                obscureText: true,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: 'Re-Enter Password',
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.lock),
                  iconColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(20),),
                  ),
                ),
                onChanged: (value){pass2 = value;},
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
                onPressed: ()async{
                  try
                  {
                    final newuser = await _auth.createUserWithEmailAndPassword(email: mail, password: pass);
                    if(pass == pass2)
                      {
                        if(newuser!=null)
                        {
                          Navigator.pushNamed(context, 'Login');
                        }
                      }
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Enter same password in both fields"),
                        ));
                      }
                  }
                  on FirebaseAuthException catch(e)
                  {
                    if(e.code == 'weak-password')
                      {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Enter a strong Password"),
                        ));
                      }
                    else if(e.code == 'email-already-in-use')
                      {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Account already exists for the mail"),
                        ));
                      }
                  }
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

