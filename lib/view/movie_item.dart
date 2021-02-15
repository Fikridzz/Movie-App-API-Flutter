import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/view/detail_movie.dart';

class MovieItem extends StatelessWidget {
  final String imgAsset, title, desc, popularity, date, rating;

  MovieItem(
      {this.imgAsset,
      this.title,
      this.desc,
      this.popularity,
      this.date,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailMovie(
                      imgAsset: imgAsset,
                      title: title,
                      desc: desc,
                      popularity: popularity,
                      date: date,
                      rating: rating,
                    )));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6)),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    "$imgUrl$imgAsset",
                    width: 136,
                    height: 204,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 3, 0, 3)),
                      Container(
                        height: 2,
                        width: 200,
                        color: blueColor,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 3, 0, 3)),
                      Text(
                        desc,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        maxLines: 4,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 3, 0, 3)),
                      Text(
                        "Popularity:",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 3, 0, 3)),
                      Text(
                        popularity,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
