import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie_respone.dart';
import 'dart:convert';

String apiKey = "c41c47a9477e70fce845573104467b3a";
String url =
    "https://api.themoviedb.org/3/discover/movie?api_key=$apiKey&language=en-US";

class Movie {
  Future<MovieRespone> getMovie() async {
    var respone = await http.get(url);
    var jsonData = jsonDecode(respone.body);
    return MovieRespone.fromJsonMap(jsonData);
  }
}
