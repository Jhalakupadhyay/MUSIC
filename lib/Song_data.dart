class song{
  final String title;
  final String description;
  final String url;
  final String coverurl;
  song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverurl,
  });
  static List<song> songs =[
    song(
      title: 'As it was',
      description: 'Harry Styles',
      url: 'Assets/songs/AsitWas',
      coverurl: 'Images/download.png',
    ),
    song(
      title: 'Wrecked',
      description: 'Imagine Dragons',
      url: 'Assets/songs/Wrecked',
      coverurl: 'Images/download.png',
    ),
    song(
      title: 'Unholy',
      description: 'Sam Smith',
      url: 'Assets/songs/Unholy',
      coverurl: 'Images/download.png',
    ),
    song(
      title: 'Breaking Me',
      description: 'Hugel',
      url: 'Assets/songs/Breaking',
      coverurl: 'Images/download.png',
    ),
  ];
}
