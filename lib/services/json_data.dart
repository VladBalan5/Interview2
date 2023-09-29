import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/model.dart';

Future<List<Post>> getPosts() async {
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  final response = await http.get(uri);

  if (response.statusCode == 200 || response.statusCode == 201) {
    List data = json.decode(response.body);

    List<Post> posts = data.map((jsonData) => Post.fromJson(jsonData)).toList();

    return posts;
  } else {
    throw Exception('Failed to load data');
  }
}
