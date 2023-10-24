import 'package:flutter/material.dart';
import 'package:streamnow/screens/stream_movie.dart';
import 'package:streamnow/widgets/top.dart';

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          TopBar(),
          // const SizedBox(height: 5),
          Expanded(child: StreamMovies()),
        ],
      ),
    );
  }
}
