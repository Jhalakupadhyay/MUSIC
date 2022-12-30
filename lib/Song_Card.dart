import 'package:flutter/material.dart';
import 'Song_data.dart';

class Song_Card extends StatelessWidget {
  const Song_Card({
    Key? key,
    required this.Songs,
  }) : super(key: key);

  final song Songs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'Player');
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: MediaQuery.of(context).size.height * 0.20,
            margin: const EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(
                  Songs.coverurl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.height * 0.18,
            margin: const EdgeInsets.only(bottom: 10.0, left: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white.withOpacity(0.8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Column(
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    Songs.title,
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    Songs.description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.play_circle,color: Colors.deepPurple,),
            ]),
          ),
        ]),
      ),
    );
  }
}
