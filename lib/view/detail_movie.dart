import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/widget/app_bar.dart';
import 'package:movie_app/constants.dart';

class DetailMovie extends StatelessWidget {
  final String imgAsset, title, desc, popularity, date, rating;

  DetailMovie(
      {this.imgAsset,
      this.title,
      this.desc,
      this.popularity,
      this.date,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          "$imgUrl$imgAsset",
                          width: 136,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                      width: 240,
                      height: 210,
                      child: Column(
                        children: <Widget>[
                          Text(
                            title,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Release date:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              SizedBox(width: 16),
                              Text(
                                date,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: <Widget>[
                              Text(
                                "Popularity:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              SizedBox(width: 16),
                              Text(
                                popularity,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: <Widget>[
                          //     Text("Rate"),
                          //     Text(
                          //       rating,
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Overview",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: blueColor),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  desc,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
