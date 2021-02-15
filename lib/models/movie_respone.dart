import 'movie_data.dart';

class MovieRespone {
  int page;
  List<Movie> results;

  MovieRespone.fromJsonMap(Map<String, dynamic> map)
      : page = map["page"],
        results =
            List<Movie>.from(map["results"].map((it) => Movie.fromJsonMap(it)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = page;
    data['results'] =
        results != null ? this.results.map((v) => v.toJson()).toList() : null;
    return data;
  }
}
