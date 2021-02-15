class Movie {
  String backdropPath;
  int id;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  dynamic voteAverage;

  Movie.fromJsonMap(Map<String, dynamic> map)
      : backdropPath = map["backdrop_path"],
        id = map["id"],
        originalTitle = map["original_title"],
        overview = map["overview"],
        popularity = map["popularity"],
        posterPath = map["poster_path"],
        releaseDate = map["release_date"],
        title = map["title"];
  // voteAverage = checkResult(map["vote_average"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = backdropPath;
    data['id'] = id;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    // data['vote_average'] = voteAverage;
    return data;
  }
}

// String checkResult(dynamic value) {
//   if (value is int) {
//     value.toString();
//   } else if (value is double) {
//     value.toString();
//   } else if (value == null) {
//     return value.toString();
//   }
// }
