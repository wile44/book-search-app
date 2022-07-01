import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';
import 'book_shop.dart';

part 'user_infos.freezed.dart';
part 'user_infos.g.dart';

@freezed
class UserInfos with _$UserInfos {
  factory UserInfos({
    int? id,
    String? name,
    String? email,
    @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt,
    bool? isAdmin,
    bool? isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'book_shops') List<BookShop>? bookShops,
    List<Book>? books,
  }) = _UserInfos;

  factory UserInfos.fromJson(Map<String, dynamic> json) =>
      _$UserInfosFromJson(json);
}
