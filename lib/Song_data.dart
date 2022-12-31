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
      url: 'https://soundcloud.com/house-hub/harry-styles-as-it-was-casperzz-remix',
      coverurl: 'Images/HarryStyles.webp',
    ),
    song(
      title: 'Wrecked',
      description: 'Imagine Dragons',
      url: 'https://soundcloud.com/tr-n-anh-v-427439220/imagine-dragons-wrecked',
      coverurl: 'Images/download.png',
    ),
    song(
      title: 'Unholy',
      description: 'Sam Smith',
      url: 'https://soundcloud.com/troyboi/sam-smith-ft-kim-petras-unholy-troyboi-remix',
      coverurl: 'Images/unholy.webp',
    ),
    song(
      title: 'Breaking Me',
      description: 'Hugel',
      url: 'https://soundcloud.com/tink_g/tink-breakin-me',
      coverurl: 'Images/Hugel.png',
    ),
  ];
}
