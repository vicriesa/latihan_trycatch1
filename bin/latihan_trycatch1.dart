
import 'dart:convert';

import 'package:http/http.dart' as http;
void main () async {
  //fungsi future tanpa pengembalian nilai
  Future<void> tarikData () async {
    var respone = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments')
    );
    var data = jsonDecode(respone.body);
    print(data);
  }

  //POIN buat future dengan pengembalian nilai dengan contoh diatas (2 orang)
  await tarikData();
}