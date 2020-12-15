import 'package:flutter/cupertino.dart';

class Slide {
  String imageUrl;
  String title;
  String description;

  Slide(
      {@required this.imageUrl,
      @required this.title,
      @required this.description});
}

final slidelist = [
  Slide(
    imageUrl: 'assets/images/dark souls.jpg',
    title: 'Dark souls',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
  ),
  Slide(
    imageUrl: 'assets/images/horse.jpg',
    title: 'Beautiful view',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
  ),
  Slide(
    imageUrl: 'assets/images/w1.jpg',
    title: 'Superman our Hero',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
  )
];
