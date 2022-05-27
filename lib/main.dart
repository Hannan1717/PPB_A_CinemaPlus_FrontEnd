// import 'package:cinemaplus/pages/dashboard.dart';
import 'package:cinemaplus/pages/cardperson.dart';
import 'package:cinemaplus/pages/movie_page.dart';
import 'package:cinemaplus/pages/person.dart';
import 'package:flutter/material.dart';
// import 'dart:convert';


void main() {
  runApp(CinemaPlus());
}

class CinemaPlus extends StatelessWidget {
  const CinemaPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviePage(),
    );
  }
}