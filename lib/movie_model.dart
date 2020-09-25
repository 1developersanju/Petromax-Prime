class Movie {
  String imageUrl;
  String title;
  String categories;
  int year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  Movie({
    this.imageUrl,
    this.title,
    this.categories,
    this.year,
    this.country,
    this.length,
    this.description,
    this.screenshots,
  });
}

final List<Movie> movies = [
  Movie(
    imageUrl: 'assets/images/image_1.jpeg',
    title: 'Space Fi',
    categories: 'Webseries, Sci-fi',
    year: 2020,
    country: 'india',
    length: 23,
    description:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
    screenshots: [
      'assets/images/',
      'assets/images/',
      'assets/images/',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/image_2.jpeg',
    title: 'Annan Thambi ',
    categories: 'Adventure, Family',
    year: 2020,
    country: 'india',
    length: 17,
    description:
        'All Clara wants is a key - a one-of-a-kind key that will unlock a box that holds a priceless gift from her late mother. A golden thread, presented to her at godfather Drosselmeyer\'s annual holiday party, leads her to the coveted key-which promptly disappears into a strange and mysterious parallel world. It\'s there that Clara encounters a soldier named Phillip, a gang of mice and the regents who preside over three Realms: Land of Snowflakes, Land of Flowers, and Land of Sweets. Clara and Phillip must brave the ominous Fourth Realm, home to the tyrant Mother Ginger, to retrieve Clara\'s key and hopefully return harmony to the unstable world.',
    screenshots: [
      'assets/images/',
      'assets/images/',
      'assets/images/',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/thumb_nail.jpeg',
    title: 'Study Time',
    categories: 'Spoof',
    year: 2019,
    country: 'india',
    length: 25,
    description:
        'Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody\'s slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they\'re two worlds apart when it comes to what they want from life as a toy.',
    screenshots: [
      'assets/images/',
      'assets/images/',
      'assets/images/',
    ],
  ),
];

final List<String> labels = [
  'Web Series',
  'Short Films',
  'Spoof Videos',
  'New Arrivals',
];

final List<String> myList = [
  'assets/images/image_3.jpeg',
  'assets/images/image_4.jpeg',
  'assets/images/image_5.jpeg',
  'assets/images/image_12.jpeg',
  'assets/images/image_7.jpeg',
];

final List<String> popular = [
  'assets/image_8.jpeg',
  'assets/image_9.jpeg',
  'assets/image_10.jpeg',
  'assets/image_13.jpeg',
];
