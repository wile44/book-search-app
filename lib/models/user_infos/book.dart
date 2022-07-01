import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    int? id,
    String? name,
    String? author,
    String? items,
    String? price,
    String? cover,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'book_shop_id') int? bookShopId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
