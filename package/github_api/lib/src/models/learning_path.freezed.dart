// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningPath _$LearningPathFromJson(Map<String, dynamic> json) {
  return _LearningPath.fromJson(json);
}

/// @nodoc
mixin _$LearningPath {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathCopyWith<LearningPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathCopyWith<$Res> {
  factory $LearningPathCopyWith(
          LearningPath value, $Res Function(LearningPath) then) =
      _$LearningPathCopyWithImpl<$Res, LearningPath>;
  @useResult
  $Res call({int id, String title, String url});
}

/// @nodoc
class _$LearningPathCopyWithImpl<$Res, $Val extends LearningPath>
    implements $LearningPathCopyWith<$Res> {
  _$LearningPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathCopyWith<$Res>
    implements $LearningPathCopyWith<$Res> {
  factory _$$_LearningPathCopyWith(
          _$_LearningPath value, $Res Function(_$_LearningPath) then) =
      __$$_LearningPathCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String url});
}

/// @nodoc
class __$$_LearningPathCopyWithImpl<$Res>
    extends _$LearningPathCopyWithImpl<$Res, _$_LearningPath>
    implements _$$_LearningPathCopyWith<$Res> {
  __$$_LearningPathCopyWithImpl(
      _$_LearningPath _value, $Res Function(_$_LearningPath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_LearningPath(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPath implements _LearningPath {
  const _$_LearningPath(
      {required this.id, required this.title, required this.url});

  factory _$_LearningPath.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'LearningPath(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPath &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathCopyWith<_$_LearningPath> get copyWith =>
      __$$_LearningPathCopyWithImpl<_$_LearningPath>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathToJson(
      this,
    );
  }
}

abstract class _LearningPath implements LearningPath {
  const factory _LearningPath(
      {required final int id,
      required final String title,
      required final String url}) = _$_LearningPath;

  factory _LearningPath.fromJson(Map<String, dynamic> json) =
      _$_LearningPath.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathCopyWith<_$_LearningPath> get copyWith =>
      throw _privateConstructorUsedError;
}
