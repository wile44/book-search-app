import 'package:freezed_annotation/freezed_annotation.dart';

import 'book_shop.dart';
import 'category.dart';
import 'user.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
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
    User? user,
    Category? category,
    @JsonKey(name: 'book_shop') BookShop? bookShop,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
