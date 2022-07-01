import 'dart:convert';

import 'package:book_search/config.dart';
import 'package:book_search/models/books_response/books_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

Future<BooksResponse> fetchBooks() async {
  final response = await http.get(Uri.parse('${Config.apiURL}books'));

  if (response.statusCode == 200) {
    return BooksResponse.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load books');
  }
}

Future<String> request() async {
  final response = await http.get(Uri.parse('${Config.apiURL}request'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body)['message'];
  } else {
    throw Exception('Failed to request');
  }
}

class BookSearch extends ChangeNotifier {
  BooksResponse _allBooks = BooksResponse();

  BooksResponse get allBook => _allBooks;

  Future<void> get fetchBooks async {
    final response = await http.get(Uri.parse(Config.apiURL + 'books'));

    if (response.statusCode == 200) {
      _allBooks = BooksResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
    notifyListeners();
  }
}
