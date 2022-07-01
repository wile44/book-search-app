import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_shop.freezed.dart';
part 'book_shop.g.dart';

@freezed
class BookShop with _$BookShop {
  factory BookShop({
    int? id,
    String? name,
    String? location,
    String? phone,
    bool? status,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _BookShop;

  factory BookShop.fromJson(Map<String, dynamic> json) =>
      _$BookShopFromJson(json);
}
