import 'dart:convert';
import 'package:http/http.dart' as http;

class Get {
  Future<List> execute() async {
    var firestoneDb = Uri.parse(
        'https://salaryfits-ps-default-rtdb.firebaseio.com/data.json');
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(utf8.decode(response.bodyBytes));
      await http.post(firestoneDb, body: response.body);
      return data;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }
}
