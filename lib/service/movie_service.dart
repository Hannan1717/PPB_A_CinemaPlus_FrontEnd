import 'dart:convert';
import 'package:cinemaplus/model/movie_model.dart';
import 'package:http/http.dart' as http;


class MovieService{
  String baseUrl = 'http://10.0.2.2:3001/movie/get';

  Future<List<MovieModel>> getMovies() async{
    var url = "$baseUrl";
    var headers = {"Content-Type": "application/json"};

    var response = await http.get(Uri.parse(url), headers: headers);

    // ignore: avoid_print
    print('hasil get : '+response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<MovieModel> movies = [];

      for (var movie in data) {
        movies.add(MovieModel.fromJson(movie));
      }

      return movies;
    } else {
      throw Exception("Gagal get movies");
    }

  }


}