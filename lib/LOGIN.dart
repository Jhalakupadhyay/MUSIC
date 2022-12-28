import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soundsoul/Music1.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    String mail = "";
    var pass;
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 27, 92, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Login'),
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
                style: TextStyle(
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
                onChanged: (value){
                  mail = value;
                },
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child:  TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
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
                onChanged: (value){
                  pass = value;
                },
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
                  try{
                    final user = await _auth.signInWithEmailAndPassword(email: mail, password: pass);
                    if(user!=null)
                      {
                        Navigator.pushNamed(context, 'Page1');
                      }
                  }
                  on FirebaseAuthException catch(e)
                  {
                    if(e.code == 'user-not-found')
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No user found with thi mail Id')));
                      }
                    else if(e.code == 'wrong-password')
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter wright password')));
                      }
                  }
                },
                child: Text('LOGIN',style: TextStyle(color: Colors.black),),
              ),
            ),
            TextButton(onPressed: (){Navigator.pushNamed(context, 'Signup');}, child: Text('           New user Signup')),
          ],
        ),
      ),
    );
  }
}
