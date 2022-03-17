import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:infotech_bookstore/models/book_tumbnail.dart';

class WebService {
  Future<List<BookThumbnail>> getNewBooks() async {
    String url = 'https://api.itbook.store/1.0/new';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      List list = result['books'];

      // print(list);

      return list
          .map((bookThumbnail) => BookThumbnail.fromJson(bookThumbnail))
          .toList();
    } else {
      throw Exception('Failed to get books');
    }
  }
}
