import 'dart:convert';
import 'package:http/http.dart' as http;

class Get {
  Future<List> execute() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response =  await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }
}