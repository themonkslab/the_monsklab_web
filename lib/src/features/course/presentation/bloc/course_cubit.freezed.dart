// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseState {
  CourseStatus get status => throw _privateConstructorUsedError;
  Course? get course => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call({CourseStatus status, Course? course});

  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? course = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseStatus,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CourseStateCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$$_CourseStateCopyWith(
          _$_CourseState value, $Res Function(_$_CourseState) then) =
      __$$_CourseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CourseStatus status, Course? course});

  @override
  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class __$$_CourseStateCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$_CourseState>
    implements _$$_CourseStateCopyWith<$Res> {
  __$$_CourseStateCopyWithImpl(
      _$_CourseState _value, $Res Function(_$_CourseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? course = freezed,
  }) {
    return _then(_$_CourseState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CourseStatus,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
    ));
  }
}

/// @nodoc

class _$_CourseState implements _CourseState {
  const _$_CourseState({this.status = CourseStatus.initial, this.course});

  @override
  @JsonKey()
  final CourseStatus status;
  @override
  final Course? course;

  @override
  String toString() {
    return 'CourseState(status: $status, course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseStateCopyWith<_$_CourseState> get copyWith =>
      __$$_CourseStateCopyWithImpl<_$_CourseState>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
      {final CourseStatus status, final Course? course}) = _$_CourseState;

  @override
  CourseStatus get status;
  @override
  Course? get course;
  @override
  @JsonKey(ignore: true)
  _$$_CourseStateCopyWith<_$_CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
