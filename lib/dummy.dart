import 'package:Anything/Model/Movie.dart';
import 'package:flutter/material.dart';
import './Model/Category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Action',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Comedy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Drama',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Fantasy',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Horror',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Mystery',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Romance',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Thriller',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Western',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Sci-fi',
    color: Colors.teal,
  ),
];
const DUMMY_MOVIES = const [
  Movies(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'BoyHood',
    reviews: Reviews.Okay,
    imageUrl: 'https://i.ibb.co/L1WJ6xN/darema-1.jpg',
    duration: 120,
    cast: [
      'Ellar Coltrane',
      'Patricia Arquette',
      'Elijah Smith',
      '	Lorelei Linklater',
      'Steven Chester Prince',
      'Bonnie Cross'
    ],
    imdb: 6.9,
  ),
  Movies(
      id: 'm2',
      categories: [
        'c2',
      ],
      title: 'Avtar',
      reviews: Reviews.Excellent,
      duration: 10,
      cast: [
        '	Sam Worthington',
        'Zoe Saldana',
        '	Stephen Lang',
        'Michelle Rodriguez',
        'Giovanni Ribisi'
      ],
      imdb: 7.4,
      imageUrl: 'https://i.ibb.co/y0nTWXr/fantasy-1.jpg'),
  Movies(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Central Intelliegence',
    reviews: Reviews.Okay,
    imageUrl:
        'https://i.ibb.co/Sc89j7F/324575id1c-Central-Intellegence-W-Billing-27x40-1-Sheet-indd.jpg',
    duration: 145,
    cast: [
      'Dwayne Johnson',
      'Kevin Hart',
      'Amy Ryan',
      '	Danielle Nicolet',
      'Jason Bateman',
      'Aaron Paul'
    ],
    imdb: 2.9,
  ),
  Movies(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Dr Strange',
    reviews: Reviews.Excellent,
    imageUrl: 'https://i.ibb.co/hsh8j4Z/fasbtasy-2.jpg',
    duration: 60,
    cast: [
      'Benedict Cumberbatch',
      'Chiwetel Ejiofor',
      '	Rachel McAdams',
      'Benedict Wongr',
      'Mads Mikkelsen',
      '	Tilda Swinton',
      'Michael Stuhlbarg',
      '	Benjamin Bratt'
    ],
    imdb: 7.8,
  ),
  Movies(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'The conjuring 2',
    reviews: Reviews.Excellent,
    imageUrl: 'https://i.ibb.co/nnCcVLn/horror-2.jpg',
    duration: 115,
    cast: [
      'Patrick Wilson',
      'Vera Farmiga',
      'Madison Wolfe',
      'Frances O',
      'Lauren Esposito',
      'Patrick McAuley',
      'Simon McBurneyr',
    ],
    imdb: 6.9,
  ),
  Movies(
      id: 'm6',
      categories: [
        'c6',
        'c10',
      ],
      title: 'Murder mystrey',
      reviews: Reviews.Poor,
      imageUrl: 'https://i.ibb.co/b65cq0k/mystrey-1.jpg',
      duration: 240,
      cast: [
        'Adam Sandler',
        'Jennifer Anistonr',
        'Luke Evans',
        '	Terence Stamp',
        'Gemma Arterton',
        'David Walliams',
        'Dany Boon',
      ],
      imdb: 8.5),
  Movies(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Fifty shades',
    reviews: Reviews.Okay,
    imageUrl: 'https://i.ibb.co/ftZ3YG9/love-2.jpg',
    duration: 120,
    cast: [
      'anasthesia steele'
          'Adam Sandler',
      'Jennifer Anistonr',
      'Luke Evans',
      '	Terence Stamp',
      'Gemma Arterton',
      'David Walliams',
      'Dany Boon',
    ],
    imdb: 5.6,
  ),
  Movies(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Hard Tide ',
    reviews: Reviews.Okay,
    imdb: 8.3,
    imageUrl: 'https://i.ibb.co/tc8vz76/thriller-2.jpg',
    duration: 35,
    cast: [
      'Nathanael Wiseman'
          'Mem Ferda',
      'Alexandra Newick',
      'Oliver Stark',
      '	Katharina Gellein Viken',
      'Andy Lucas',
    ],
  ),
  Movies(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Skyscraper',
    reviews: Reviews.Excellent,
    imdb: 5.5,
    imageUrl: 'https://i.ibb.co/X8dcwQn/action-2.jpg',
    duration: 45,
    cast: [
      'Dwayne Johnson',
      'Kevin Hart',
      'Amy Ryan',
      '	Danielle Nicolet',
      'Jason Bateman',
      'Aaron Paul'
    ],
  ),
  Movies(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Bad Boys 2',
    reviews: Reviews.Okay,
    imdb: 6.5,
    imageUrl: 'https://i.ibb.co/qpFGjXG/action-1.jpg',
    duration: 30,
    cast: [
      'will smith'
          'martin lawrence'
          'Dwayne Johnson',
      'Kevin Hart',
      'Amy Ryan',
      '	Danielle Nicolet',
      'Jason Bateman',
      'Aaron Paul'
    ],
  ),
];
