// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'archive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArchiveState {
  ArchiveStatus get status => throw _privateConstructorUsedError;
  LearningPath? get learningPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchiveStateCopyWith<ArchiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveStateCopyWith<$Res> {
  factory $ArchiveStateCopyWith(
          ArchiveState value, $Res Function(ArchiveState) then) =
      _$ArchiveStateCopyWithImpl<$Res, ArchiveState>;
  @useResult
  $Res call({ArchiveStatus status, LearningPath? learningPath});

  $LearningPathCopyWith<$Res>? get learningPath;
}

/// @nodoc
class _$ArchiveStateCopyWithImpl<$Res, $Val extends ArchiveState>
    implements $ArchiveStateCopyWith<$Res> {
  _$ArchiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? learningPath = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ArchiveStatus,
      learningPath: freezed == learningPath
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as LearningPath?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPathCopyWith<$Res>? get learningPath {
    if (_value.learningPath == null) {
      return null;
    }

    return $LearningPathCopyWith<$Res>(_value.learningPath!, (value) {
      return _then(_value.copyWith(learningPath: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArchiveStateCopyWith<$Res>
    implements $ArchiveStateCopyWith<$Res> {
  factory _$$_ArchiveStateCopyWith(
          _$_ArchiveState value, $Res Function(_$_ArchiveState) then) =
      __$$_ArchiveStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ArchiveStatus status, LearningPath? learningPath});

  @override
  $LearningPathCopyWith<$Res>? get learningPath;
}

/// @nodoc
class __$$_ArchiveStateCopyWithImpl<$Res>
    extends _$ArchiveStateCopyWithImpl<$Res, _$_ArchiveState>
    implements _$$_ArchiveStateCopyWith<$Res> {
  __$$_ArchiveStateCopyWithImpl(
      _$_ArchiveState _value, $Res Function(_$_ArchiveState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? learningPath = freezed,
  }) {
    return _then(_$_ArchiveState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ArchiveStatus,
      learningPath: freezed == learningPath
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as LearningPath?,
    ));
  }
}

/// @nodoc

class _$_ArchiveState implements _ArchiveState {
  const _$_ArchiveState(
      {this.status = ArchiveStatus.initial, this.learningPath});

  @override
  @JsonKey()
  final ArchiveStatus status;
  @override
  final LearningPath? learningPath;

  @override
  String toString() {
    return 'ArchiveState(status: $status, learningPath: $learningPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArchiveState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.learningPath, learningPath) ||
                other.learningPath == learningPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, learningPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchiveStateCopyWith<_$_ArchiveState> get copyWith =>
      __$$_ArchiveStateCopyWithImpl<_$_ArchiveState>(this, _$identity);
}

abstract class _ArchiveState implements ArchiveState {
  const factory _ArchiveState(
      {final ArchiveStatus status,
      final LearningPath? learningPath}) = _$_ArchiveState;

  @override
  ArchiveStatus get status;
  @override
  LearningPath? get learningPath;
  @override
  @JsonKey(ignore: true)
  _$$_ArchiveStateCopyWith<_$_ArchiveState> get copyWith =>
      throw _privateConstructorUsedError;
}
