import 'package:flutter/material.dart';
import 'package:movie_app/view/movie_page.dart';
import 'package:movie_app/widget/app_bar.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/helper/request_movie.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  Movie _movie = Movie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: defaultAppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: _movie.getMovie(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MoviePage(snapshot.data);
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Center(
                child: Text("data tidak ada"),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
