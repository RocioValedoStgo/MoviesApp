import 'dart:convert';
import 'package:movies_app/src/model/movie.dart';
import 'package:http/http.dart' as http;

class MoviesProvider {
  String _apiKey = 'b317405e8ca90004565d0fc5ce77d48b';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Movie>> getMovie() async {
    final url = Uri.https(
        _url, '3/movie/550', {'api_key': _apiKey, 'language': _language});

    final response = await http.get(url);
    final decodeData = json.decode(response.body);
    print(decodeData);

    return [];
  }
}
