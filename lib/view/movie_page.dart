import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_data.dart';
import 'package:movie_app/view/movie_item.dart';
import 'package:movie_app/models/movie_respone.dart';

class MoviePage extends StatelessWidget {
  MovieRespone movieRespone;

  MoviePage(this.movieRespone);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: movieRespone.results.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return MovieItem(
                    imgAsset: movieRespone.results[index].posterPath ?? "",
                    title: movieRespone.results[index].title ?? "",
                    desc: movieRespone.results[index].overview ?? "",
                    popularity:
                        movieRespone.results[index].popularity.toString(),
                    date: movieRespone.results[index].releaseDate ?? "",
                    rating: movieRespone.results[index].voteAverage,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
