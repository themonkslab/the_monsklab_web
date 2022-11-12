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

LearningPathRepo _$LearningPathRepoFromJson(Map<String, dynamic> json) {
  return _LearningPathRepo.fromJson(json);
}

/// @nodoc
mixin _$LearningPathRepo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<CourseRepo> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathRepoCopyWith<LearningPathRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathRepoCopyWith<$Res> {
  factory $LearningPathRepoCopyWith(
          LearningPathRepo value, $Res Function(LearningPathRepo) then) =
      _$LearningPathRepoCopyWithImpl<$Res, LearningPathRepo>;
  @useResult
  $Res call({int id, String title, List<CourseRepo> courses});
}

/// @nodoc
class _$LearningPathRepoCopyWithImpl<$Res, $Val extends LearningPathRepo>
    implements $LearningPathRepoCopyWith<$Res> {
  _$LearningPathRepoCopyWithImpl(this._value, this._then);

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
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseRepo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathRepoCopyWith<$Res>
    implements $LearningPathRepoCopyWith<$Res> {
  factory _$$_LearningPathRepoCopyWith(
          _$_LearningPathRepo value, $Res Function(_$_LearningPathRepo) then) =
      __$$_LearningPathRepoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, List<CourseRepo> courses});
}

/// @nodoc
class __$$_LearningPathRepoCopyWithImpl<$Res>
    extends _$LearningPathRepoCopyWithImpl<$Res, _$_LearningPathRepo>
    implements _$$_LearningPathRepoCopyWith<$Res> {
  __$$_LearningPathRepoCopyWithImpl(
      _$_LearningPathRepo _value, $Res Function(_$_LearningPathRepo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? courses = null,
  }) {
    return _then(_$_LearningPathRepo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseRepo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathRepo implements _LearningPathRepo {
  const _$_LearningPathRepo(
      {required this.id,
      required this.title,
      required final List<CourseRepo> courses})
      : _courses = courses;

  factory _$_LearningPathRepo.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathRepoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<CourseRepo> _courses;
  @override
  List<CourseRepo> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'LearningPathRepo(id: $id, title: $title, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathRepo &&
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
  _$$_LearningPathRepoCopyWith<_$_LearningPathRepo> get copyWith =>
      __$$_LearningPathRepoCopyWithImpl<_$_LearningPathRepo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathRepoToJson(
      this,
    );
  }
}

abstract class _LearningPathRepo implements LearningPathRepo {
  const factory _LearningPathRepo(
      {required final int id,
      required final String title,
      required final List<CourseRepo> courses}) = _$_LearningPathRepo;

  factory _LearningPathRepo.fromJson(Map<String, dynamic> json) =
      _$_LearningPathRepo.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<CourseRepo> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathRepoCopyWith<_$_LearningPathRepo> get copyWith =>
      throw _privateConstructorUsedError;
}
