import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'books_response.freezed.dart';
part 'books_response.g.dart';

@freezed
class BooksResponse with _$BooksResponse {
  factory BooksResponse({
    String? message,
    List<Datum>? data,
  }) = _BooksResponse;

  factory BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksResponseFromJson(json);
}
