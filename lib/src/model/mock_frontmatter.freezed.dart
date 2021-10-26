// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mock_frontmatter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MockFrontmatter _$MockFrontmatterFromJson(Map<String, dynamic> json) {
  return _MockFrontmatter.fromJson(json);
}

/// @nodoc
class _$MockFrontmatterTearOff {
  const _$MockFrontmatterTearOff();

  _MockFrontmatter call(
      {required String title,
      required String author,
      required String excerpt,
      required String category,
      required String date}) {
    return _MockFrontmatter(
      title: title,
      author: author,
      excerpt: excerpt,
      category: category,
      date: date,
    );
  }

  MockFrontmatter fromJson(Map<String, Object?> json) {
    return MockFrontmatter.fromJson(json);
  }
}

/// @nodoc
const $MockFrontmatter = _$MockFrontmatterTearOff();

/// @nodoc
mixin _$MockFrontmatter {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MockFrontmatterCopyWith<MockFrontmatter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockFrontmatterCopyWith<$Res> {
  factory $MockFrontmatterCopyWith(
          MockFrontmatter value, $Res Function(MockFrontmatter) then) =
      _$MockFrontmatterCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String author,
      String excerpt,
      String category,
      String date});
}

/// @nodoc
class _$MockFrontmatterCopyWithImpl<$Res>
    implements $MockFrontmatterCopyWith<$Res> {
  _$MockFrontmatterCopyWithImpl(this._value, this._then);

  final MockFrontmatter _value;
  // ignore: unused_field
  final $Res Function(MockFrontmatter) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? excerpt = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MockFrontmatterCopyWith<$Res>
    implements $MockFrontmatterCopyWith<$Res> {
  factory _$MockFrontmatterCopyWith(
          _MockFrontmatter value, $Res Function(_MockFrontmatter) then) =
      __$MockFrontmatterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String author,
      String excerpt,
      String category,
      String date});
}

/// @nodoc
class __$MockFrontmatterCopyWithImpl<$Res>
    extends _$MockFrontmatterCopyWithImpl<$Res>
    implements _$MockFrontmatterCopyWith<$Res> {
  __$MockFrontmatterCopyWithImpl(
      _MockFrontmatter _value, $Res Function(_MockFrontmatter) _then)
      : super(_value, (v) => _then(v as _MockFrontmatter));

  @override
  _MockFrontmatter get _value => super._value as _MockFrontmatter;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? excerpt = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_MockFrontmatter(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MockFrontmatter extends _MockFrontmatter {
  const _$_MockFrontmatter(
      {required this.title,
      required this.author,
      required this.excerpt,
      required this.category,
      required this.date})
      : super._();

  factory _$_MockFrontmatter.fromJson(Map<String, dynamic> json) =>
      _$$_MockFrontmatterFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String excerpt;
  @override
  final String category;
  @override
  final String date;

  @override
  String toString() {
    return 'MockFrontmatter(title: $title, author: $author, excerpt: $excerpt, category: $category, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MockFrontmatter &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, excerpt, category, date);

  @JsonKey(ignore: true)
  @override
  _$MockFrontmatterCopyWith<_MockFrontmatter> get copyWith =>
      __$MockFrontmatterCopyWithImpl<_MockFrontmatter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MockFrontmatterToJson(this);
  }
}

abstract class _MockFrontmatter extends MockFrontmatter {
  const factory _MockFrontmatter(
      {required String title,
      required String author,
      required String excerpt,
      required String category,
      required String date}) = _$_MockFrontmatter;
  const _MockFrontmatter._() : super._();

  factory _MockFrontmatter.fromJson(Map<String, dynamic> json) =
      _$_MockFrontmatter.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get excerpt;
  @override
  String get category;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$MockFrontmatterCopyWith<_MockFrontmatter> get copyWith =>
      throw _privateConstructorUsedError;
}
