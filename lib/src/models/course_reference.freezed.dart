// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseReference _$CourseReferenceFromJson(Map<String, dynamic> json) {
  return _CourseReference.fromJson(json);
}

/// @nodoc
mixin _$CourseReference {
  String get path => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseReferenceCopyWith<CourseReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseReferenceCopyWith<$Res> {
  factory $CourseReferenceCopyWith(
          CourseReference value, $Res Function(CourseReference) then) =
      _$CourseReferenceCopyWithImpl<$Res, CourseReference>;
  @useResult
  $Res call({String path, String title});
}

/// @nodoc
class _$CourseReferenceCopyWithImpl<$Res, $Val extends CourseReference>
    implements $CourseReferenceCopyWith<$Res> {
  _$CourseReferenceCopyWithImpl(this._value, this._then);

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
abstract class _$$_CourseReferenceCopyWith<$Res>
    implements $CourseReferenceCopyWith<$Res> {
  factory _$$_CourseReferenceCopyWith(
          _$_CourseReference value, $Res Function(_$_CourseReference) then) =
      __$$_CourseReferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String title});
}

/// @nodoc
class __$$_CourseReferenceCopyWithImpl<$Res>
    extends _$CourseReferenceCopyWithImpl<$Res, _$_CourseReference>
    implements _$$_CourseReferenceCopyWith<$Res> {
  __$$_CourseReferenceCopyWithImpl(
      _$_CourseReference _value, $Res Function(_$_CourseReference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? title = null,
  }) {
    return _then(_$_CourseReference(
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
class _$_CourseReference implements _CourseReference {
  const _$_CourseReference({required this.path, required this.title});

  factory _$_CourseReference.fromJson(Map<String, dynamic> json) =>
      _$$_CourseReferenceFromJson(json);

  @override
  final String path;
  @override
  final String title;

  @override
  String toString() {
    return 'CourseReference(path: $path, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseReference &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseReferenceCopyWith<_$_CourseReference> get copyWith =>
      __$$_CourseReferenceCopyWithImpl<_$_CourseReference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseReferenceToJson(
      this,
    );
  }
}

abstract class _CourseReference implements CourseReference {
  const factory _CourseReference(
      {required final String path,
      required final String title}) = _$_CourseReference;

  factory _CourseReference.fromJson(Map<String, dynamic> json) =
      _$_CourseReference.fromJson;

  @override
  String get path;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CourseReferenceCopyWith<_$_CourseReference> get copyWith =>
      throw _privateConstructorUsedError;
}
