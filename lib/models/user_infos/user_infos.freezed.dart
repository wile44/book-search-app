// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_infos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfos _$UserInfosFromJson(Map<String, dynamic> json) {
  return _UserInfos.fromJson(json);
}

/// @nodoc
mixin _$UserInfos {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  dynamic get emailVerifiedAt => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_shops')
  List<BookShop>? get bookShops => throw _privateConstructorUsedError;
  List<Book>? get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfosCopyWith<UserInfos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfosCopyWith<$Res> {
  factory $UserInfosCopyWith(UserInfos value, $Res Function(UserInfos) then) =
      _$UserInfosCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt,
      bool? isAdmin,
      bool? isActive,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'book_shops') List<BookShop>? bookShops,
      List<Book>? books});
}

/// @nodoc
class _$UserInfosCopyWithImpl<$Res> implements $UserInfosCopyWith<$Res> {
  _$UserInfosCopyWithImpl(this._value, this._then);

  final UserInfos _value;
  // ignore: unused_field
  final $Res Function(UserInfos) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? isAdmin = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookShops = freezed,
    Object? books = freezed,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookShops: bookShops == freezed
          ? _value.bookShops
          : bookShops // ignore: cast_nullable_to_non_nullable
              as List<BookShop>?,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserInfosCopyWith<$Res> implements $UserInfosCopyWith<$Res> {
  factory _$$_UserInfosCopyWith(
          _$_UserInfos value, $Res Function(_$_UserInfos) then) =
      __$$_UserInfosCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt,
      bool? isAdmin,
      bool? isActive,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'book_shops') List<BookShop>? bookShops,
      List<Book>? books});
}

/// @nodoc
class __$$_UserInfosCopyWithImpl<$Res> extends _$UserInfosCopyWithImpl<$Res>
    implements _$$_UserInfosCopyWith<$Res> {
  __$$_UserInfosCopyWithImpl(
      _$_UserInfos _value, $Res Function(_$_UserInfos) _then)
      : super(_value, (v) => _then(v as _$_UserInfos));

  @override
  _$_UserInfos get _value => super._value as _$_UserInfos;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? isAdmin = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookShops = freezed,
    Object? books = freezed,
  }) {
    return _then(_$_UserInfos(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: emailVerifiedAt == freezed
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookShops: bookShops == freezed
          ? _value._bookShops
          : bookShops // ignore: cast_nullable_to_non_nullable
              as List<BookShop>?,
      books: books == freezed
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfos implements _UserInfos {
  _$_UserInfos(
      {this.id,
      this.name,
      this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      this.isAdmin,
      this.isActive,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'book_shops') final List<BookShop>? bookShops,
      final List<Book>? books})
      : _bookShops = bookShops,
        _books = books;

  factory _$_UserInfos.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfosFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final dynamic emailVerifiedAt;
  @override
  final bool? isAdmin;
  @override
  final bool? isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<BookShop>? _bookShops;
  @override
  @JsonKey(name: 'book_shops')
  List<BookShop>? get bookShops {
    final value = _bookShops;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Book>? _books;
  @override
  List<Book>? get books {
    final value = _books;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserInfos(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, isAdmin: $isAdmin, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, bookShops: $bookShops, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfos &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._bookShops, _bookShops) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerifiedAt),
      const DeepCollectionEquality().hash(isAdmin),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(_bookShops),
      const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  _$$_UserInfosCopyWith<_$_UserInfos> get copyWith =>
      __$$_UserInfosCopyWithImpl<_$_UserInfos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfosToJson(this);
  }
}

abstract class _UserInfos implements UserInfos {
  factory _UserInfos(
      {final int? id,
      final String? name,
      final String? email,
      @JsonKey(name: 'email_verified_at') final dynamic emailVerifiedAt,
      final bool? isAdmin,
      final bool? isActive,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'book_shops') final List<BookShop>? bookShops,
      final List<Book>? books}) = _$_UserInfos;

  factory _UserInfos.fromJson(Map<String, dynamic> json) =
      _$_UserInfos.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email_verified_at')
  dynamic get emailVerifiedAt => throw _privateConstructorUsedError;
  @override
  bool? get isAdmin => throw _privateConstructorUsedError;
  @override
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'book_shops')
  List<BookShop>? get bookShops => throw _privateConstructorUsedError;
  @override
  List<Book>? get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfosCopyWith<_$_UserInfos> get copyWith =>
      throw _privateConstructorUsedError;
}
