import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:soundsoul/Song_data.dart';

import 'Song_Card.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<song> Songs = song.songs;

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: const [
            CircleAvatar(radius: 40.0,),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: const Text('Hii, Olivia',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 14.0,
                ),),
              ),
              const SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: const Text('It is a Lovely day !',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(style: const TextStyle(
                  color: Colors.purple,
                ),cursorColor: Colors.purple,decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  isDense: true,
                  prefixIcon: const Icon(Icons.search,color: Colors.black,),
                  hintStyle: const TextStyle(color: Colors.black54,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Trending Songs',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(height: 10.0,),
              SizedBox(height: MediaQuery.of(context).size.height*0.27,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Songs.length,
                itemBuilder: (context,index)
                  {
                      return Song_Card(Songs: Songs[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

