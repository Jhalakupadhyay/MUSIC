import 'package:flutter/cupertino.dart';
import 'package:soundsoul/Song_data.dart';
class Playlist{
  final String title;
  final List<song> Songs;
  final String imgurl;

  Playlist({
    required this.title,
    required this.Songs,
    required this.imgurl,
  });

  static List<Playlist> playlists =
  [
    Playlist(title: 'Hip-Hop', Songs: song.songs, imgurl: 'https://assets.audiomack.com/g-lgd-smk/97bac37d9e8e60986e8b89c1ae7bf6ea47fc90c8b92729838de6fbea62a44ed5.jpeg?width=1000&height=1000&max=true'),
    Playlist(title: 'Rock-n-Roll', Songs: song.songs, imgurl: 'https://i5.walmartimages.com/asr/33d42e92-314b-4b10-8234-b0a8dcfdd6dd_1.bd142b33d1d77a69f5f093e6360c8c4b.jpeg'),
    Playlist(title: 'Techno', Songs: song.songs, imgurl: 'https://cps-static.rovicorp.com/3/JPG_400/MI0000/689/MI0000689676.jpg?partner=allrovi.com'),
    Playlist(title: 'Soft-PoP', Songs: song.songs, imgurl: 'https://i.scdn.co/image/ab67706c0000bebb51b73ed74addc8481526b3ed')
  ];
}

