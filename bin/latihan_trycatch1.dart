import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //fungsi future tanpa pengembalian nilai
  Future<dynamic> tarikData() async {
    var respone = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var data = jsonDecode(respone.body);
    return (data);
  }

  var data = await tarikData();
  // print('--------------------------');
  // print('data Comment');
  // print('--------------------------');
  // for (var i = 0; i < data.length; i++) {
  //   print('${data[i]['name']} | ${data[i]['email']}');
  //   print('--------------------------');

  //for in
  // print('--------------------------');
  // print('data Comment');
  // print('--------------------------');
  // for (var comment in data) {
  //   print('${comment['name']} | ${comment['email']}');
  //   print('--------------------------');
  // };

  //fOR EACH
  print('--------------------------');
  print('data Comment');
  print('--------------------------');
  data.forEach ((v) {
    print('${v['name']} | ${v['email']}');
    print('--------------------------');
  });
}
