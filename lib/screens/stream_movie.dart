import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:streamnow/screens/movie.dart';
import 'package:streamnow/widgets/moviecard.dart';

class StreamMovies extends StatelessWidget {
  const StreamMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('movies').snapshots(),
        builder: ((context, movieSnapshot) {
          if (movieSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!movieSnapshot.hasData || movieSnapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('no messages'),
            );
          }
          final loadMovies = movieSnapshot.data!.docs;
          return ListView(
            children: [
              for (var movie in loadMovies)
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: MovieCard(
                        category: List<String>.from(movie['category']),
                        hours: movie["hours"],
                        minutes: movie["minutes"],
                        movieName: movie["movieName"],
                        story: movie["story"],
                        year: movie["year"],
                        imageUrl: movie['imageUrl'],
                        streamingUrl: movie["streamingUrl"])),
            ],
          );
        }));
    // return Placeholder();
  }
}
