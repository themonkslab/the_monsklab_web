// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleReference _$ArticleReferenceFromJson(Map<String, dynamic> json) {
  return _ArticleReference.fromJson(json);
}

/// @nodoc
mixin _$ArticleReference {
  String get path => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleReferenceCopyWith<ArticleReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleReferenceCopyWith<$Res> {
  factory $ArticleReferenceCopyWith(
          ArticleReference value, $Res Function(ArticleReference) then) =
      _$ArticleReferenceCopyWithImpl<$Res, ArticleReference>;
  @useResult
  $Res call({String path, String title});
}

/// @nodoc
class _$ArticleReferenceCopyWithImpl<$Res, $Val extends ArticleReference>
    implements $ArticleReferenceCopyWith<$Res> {
  _$ArticleReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleReferenceCopyWith<$Res>
    implements $ArticleReferenceCopyWith<$Res> {
  factory _$$_ArticleReferenceCopyWith(
          _$_ArticleReference value, $Res Function(_$_ArticleReference) then) =
      __$$_ArticleReferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String title});
}

/// @nodoc
class __$$_ArticleReferenceCopyWithImpl<$Res>
    extends _$ArticleReferenceCopyWithImpl<$Res, _$_ArticleReference>
    implements _$$_ArticleReferenceCopyWith<$Res> {
  __$$_ArticleReferenceCopyWithImpl(
      _$_ArticleReference _value, $Res Function(_$_ArticleReference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? title = null,
  }) {
    return _then(_$_ArticleReference(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleReference implements _ArticleReference {
  const _$_ArticleReference({required this.path, required this.title});

  factory _$_ArticleReference.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleReferenceFromJson(json);

  @override
  final String path;
  @override
  final String title;

  @override
  String toString() {
    return 'ArticleReference(path: $path, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleReference &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleReferenceCopyWith<_$_ArticleReference> get copyWith =>
      __$$_ArticleReferenceCopyWithImpl<_$_ArticleReference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleReferenceToJson(
      this,
    );
  }
}

abstract class _ArticleReference implements ArticleReference {
  const factory _ArticleReference(
      {required final String path,
      required final String title}) = _$_ArticleReference;

  factory _ArticleReference.fromJson(Map<String, dynamic> json) =
      _$_ArticleReference.fromJson;

  @override
  String get path;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleReferenceCopyWith<_$_ArticleReference> get copyWith =>
      throw _privateConstructorUsedError;
}
