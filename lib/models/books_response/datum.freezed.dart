// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get items => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_shop_id')
  int? get bookShopId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_shop')
  BookShop? get bookShop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res>;
  $Res call(
      {int? id,
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
      @JsonKey(name: 'book_shop') BookShop? bookShop});

  $UserCopyWith<$Res>? get user;
  $CategoryCopyWith<$Res>? get category;
  $BookShopCopyWith<$Res>? get bookShop;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res> implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  final Datum _value;
  // ignore: unused_field
  final $Res Function(Datum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? author = freezed,
    Object? items = freezed,
    Object? price = freezed,
    Object? cover = freezed,
    Object? userId = freezed,
    Object? bookShopId = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? category = freezed,
    Object? bookShop = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookShopId: bookShopId == freezed
          ? _value.bookShopId
          : bookShopId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      bookShop: bookShop == freezed
          ? _value.bookShop
          : bookShop // ignore: cast_nullable_to_non_nullable
              as BookShop?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $BookShopCopyWith<$Res>? get bookShop {
    if (_value.bookShop == null) {
      return null;
    }

    return $BookShopCopyWith<$Res>(_value.bookShop!, (value) {
      return _then(_value.copyWith(bookShop: value));
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
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
      @JsonKey(name: 'book_shop') BookShop? bookShop});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $BookShopCopyWith<$Res>? get bookShop;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, (v) => _then(v as _$_Datum));

  @override
  _$_Datum get _value => super._value as _$_Datum;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? author = freezed,
    Object? items = freezed,
    Object? price = freezed,
    Object? cover = freezed,
    Object? userId = freezed,
    Object? bookShopId = freezed,
    Object? categoryId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? category = freezed,
    Object? bookShop = freezed,
  }) {
    return _then(_$_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookShopId: bookShopId == freezed
          ? _value.bookShopId
          : bookShopId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      bookShop: bookShop == freezed
          ? _value.bookShop
          : bookShop // ignore: cast_nullable_to_non_nullable
              as BookShop?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  _$_Datum(
      {this.id,
      this.name,
      this.author,
      this.items,
      this.price,
      this.cover,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'book_shop_id') this.bookShopId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.user,
      this.category,
      @JsonKey(name: 'book_shop') this.bookShop});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? author;
  @override
  final String? items;
  @override
  final String? price;
  @override
  final String? cover;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'book_shop_id')
  final int? bookShopId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final Category? category;
  @override
  @JsonKey(name: 'book_shop')
  final BookShop? bookShop;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, author: $author, items: $items, price: $price, cover: $cover, userId: $userId, bookShopId: $bookShopId, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, category: $category, bookShop: $bookShop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.bookShopId, bookShopId) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.bookShop, bookShop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(bookShopId),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(bookShop));

  @JsonKey(ignore: true)
  @override
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(this);
  }
}

abstract class _Datum implements Datum {
  factory _Datum(
      {final int? id,
      final String? name,
      final String? author,
      final String? items,
      final String? price,
      final String? cover,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'book_shop_id') final int? bookShopId,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final User? user,
      final Category? category,
      @JsonKey(name: 'book_shop') final BookShop? bookShop}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get author => throw _privateConstructorUsedError;
  @override
  String? get items => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  String? get cover => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'book_shop_id')
  int? get bookShopId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  Category? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'book_shop')
  BookShop? get bookShop => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
