import 'dart:convert';
import 'package:http/http.dart' as http;


class PostResult
{
  String? id;
  String? urlPoster;
  String? title;
  String? duration;

  PostResult({this.id,this.urlPoster,this.title,this.duration});

  factory PostResult.createPostResult(Map<String, dynamic> object)
  {
    return PostResult(
      id: object['id'],
      urlPoster: object['urlPoster'],
      title: object['title'],
      duration: object['duration']
    );
  }

  static Future<PostResult> connectToAPI(String urlPoster,String title, String duration) async {
    var url = 'http://10.0.2.2:3001/movie/insert';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'urlPoster': urlPoster,
      'title': title,
      'duration': duration,
    });

    print(jsonDecode(body));

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print("Succes");

    } else {
      print("Gagal Register");
      
    }
    return PostResult();
  }

}