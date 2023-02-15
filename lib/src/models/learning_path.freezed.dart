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
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<CourseReference> get courses => throw _privateConstructorUsedError;

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
  $Res call({String id, String title, List<CourseReference> courses});
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
    Object? courses = null,
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
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseReference>,
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
  $Res call({String id, String title, List<CourseReference> courses});
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
    Object? courses = null,
  }) {
    return _then(_$_LearningPath(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseReference>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPath implements _LearningPath {
  const _$_LearningPath(
      {required this.id,
      required this.title,
      required final List<CourseReference> courses})
      : _courses = courses;

  factory _$_LearningPath.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<CourseReference> _courses;
  @override
  List<CourseReference> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'LearningPath(id: $id, title: $title, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPath &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_courses));

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
      {required final String id,
      required final String title,
      required final List<CourseReference> courses}) = _$_LearningPath;

  factory _LearningPath.fromJson(Map<String, dynamic> json) =
      _$_LearningPath.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<CourseReference> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathCopyWith<_$_LearningPath> get copyWith =>
      throw _privateConstructorUsedError;
}
