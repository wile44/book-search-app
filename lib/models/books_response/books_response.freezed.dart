// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooksResponse _$BooksResponseFromJson(Map<String, dynamic> json) {
  return _BooksResponse.fromJson(json);
}

/// @nodoc
mixin _$BooksResponse {
  String? get message => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksResponseCopyWith<BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksResponseCopyWith<$Res> {
  factory $BooksResponseCopyWith(
          BooksResponse value, $Res Function(BooksResponse) then) =
      _$BooksResponseCopyWithImpl<$Res>;
  $Res call({String? message, List<Datum>? data});
}

/// @nodoc
class _$BooksResponseCopyWithImpl<$Res>
    implements $BooksResponseCopyWith<$Res> {
  _$BooksResponseCopyWithImpl(this._value, this._then);

  final BooksResponse _value;
  // ignore: unused_field
  final $Res Function(BooksResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BooksResponseCopyWith<$Res>
    implements $BooksResponseCopyWith<$Res> {
  factory _$$_BooksResponseCopyWith(
          _$_BooksResponse value, $Res Function(_$_BooksResponse) then) =
      __$$_BooksResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, List<Datum>? data});
}

/// @nodoc
class __$$_BooksResponseCopyWithImpl<$Res>
    extends _$BooksResponseCopyWithImpl<$Res>
    implements _$$_BooksResponseCopyWith<$Res> {
  __$$_BooksResponseCopyWithImpl(
      _$_BooksResponse _value, $Res Function(_$_BooksResponse) _then)
      : super(_value, (v) => _then(v as _$_BooksResponse));

  @override
  _$_BooksResponse get _value => super._value as _$_BooksResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BooksResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksResponse implements _BooksResponse {
  _$_BooksResponse({this.message, final List<Datum>? data}) : _data = data;

  factory _$_BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BooksResponseFromJson(json);

  @override
  final String? message;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BooksResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_BooksResponseCopyWith<_$_BooksResponse> get copyWith =>
      __$$_BooksResponseCopyWithImpl<_$_BooksResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksResponseToJson(this);
  }
}

abstract class _BooksResponse implements BooksResponse {
  factory _BooksResponse({final String? message, final List<Datum>? data}) =
      _$_BooksResponse;

  factory _BooksResponse.fromJson(Map<String, dynamic> json) =
      _$_BooksResponse.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  List<Datum>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BooksResponseCopyWith<_$_BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
