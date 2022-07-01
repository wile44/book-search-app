// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as int?,
      name: json['name'] as String?,
      author: json['author'] as String?,
      items: json['items'] as String?,
      price: json['price'] as String?,
      cover: json['cover'] as String?,
      userId: json['user_id'] as int?,
      bookShopId: json['book_shop_id'] as int?,
      categoryId: json['category_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author': instance.author,
      'items': instance.items,
      'price': instance.price,
      'cover': instance.cover,
      'user_id': instance.userId,
      'book_shop_id': instance.bookShopId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
