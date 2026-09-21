import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //fungsi future tanpa pengembalian nilai
  Future<dynamic> tarikData() async {
    try {
      var respone = await http
        .get(Uri.parse('https://dummyjson.com/products'));
    var data = jsonDecode(respone.body);
    return data['products'];
    } catch (e) {
      return[];
    }
    
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
  // print('data nonoya');
  // print('--------------------------');
  // for (var nonoya in data) {
  //   print('${nonoya['name']} | ${nonoya['email']}');
  //   print('--------------------------');
  // };

  //fOR EACH
  // print('--------------------------');
  // print('data Vicc (O_O) ');
  // print('--------------------------');
  // data.forEach ((v) {
  //   print('${v['name']} | ${v['email']}');
  //   print('--------------------------');
  // });

  //https://dummyjson.com/products
  //print title | Price
  print('--------------------------');
  print('Vicc Store 🥝');
  print('--------------------------');
  for(var product in data) {
    print('Product: ${product['title']}');
    print('Price: ${product['price']}k');
    print('Stock: ${product['stock']}');
    print('--------------------------');
  }
}
