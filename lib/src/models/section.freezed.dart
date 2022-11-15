// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call(
      {String id, String title, String? description, List<Article> articles});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$_SectionCopyWith(
          _$_Section value, $Res Function(_$_Section) then) =
      __$$_SectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String? description, List<Article> articles});
}

/// @nodoc
class __$$_SectionCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$_Section>
    implements _$$_SectionCopyWith<$Res> {
  __$$_SectionCopyWithImpl(_$_Section _value, $Res Function(_$_Section) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? articles = null,
  }) {
    return _then(_$_Section(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section implements _Section {
  const _$_Section(
      {required this.id,
      required this.title,
      this.description,
      required final List<Article> articles})
      : _articles = articles;

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$$_SectionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  final List<Article> _articles;
  @override
  List<Article> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'Section(id: $id, title: $title, description: $description, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Section &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      __$$_SectionCopyWithImpl<_$_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {required final String id,
      required final String title,
      final String? description,
      required final List<Article> articles}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
