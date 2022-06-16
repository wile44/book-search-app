// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksResponse _$$_BooksResponseFromJson(Map<String, dynamic> json) =>
    _$_BooksResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BooksResponseToJson(_$_BooksResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
