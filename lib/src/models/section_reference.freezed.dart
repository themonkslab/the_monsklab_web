// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionReference _$SectionReferenceFromJson(Map<String, dynamic> json) {
  return _SectionReference.fromJson(json);
}

/// @nodoc
mixin _$SectionReference {
  String get title => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionReferenceCopyWith<SectionReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionReferenceCopyWith<$Res> {
  factory $SectionReferenceCopyWith(
          SectionReference value, $Res Function(SectionReference) then) =
      _$SectionReferenceCopyWithImpl<$Res, SectionReference>;
  @useResult
  $Res call({String title, String path});
}

/// @nodoc
class _$SectionReferenceCopyWithImpl<$Res, $Val extends SectionReference>
    implements $SectionReferenceCopyWith<$Res> {
  _$SectionReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionReferenceCopyWith<$Res>
    implements $SectionReferenceCopyWith<$Res> {
  factory _$$_SectionReferenceCopyWith(
          _$_SectionReference value, $Res Function(_$_SectionReference) then) =
      __$$_SectionReferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String path});
}

/// @nodoc
class __$$_SectionReferenceCopyWithImpl<$Res>
    extends _$SectionReferenceCopyWithImpl<$Res, _$_SectionReference>
    implements _$$_SectionReferenceCopyWith<$Res> {
  __$$_SectionReferenceCopyWithImpl(
      _$_SectionReference _value, $Res Function(_$_SectionReference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
  }) {
    return _then(_$_SectionReference(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionReference implements _SectionReference {
  const _$_SectionReference({required this.title, required this.path});

  factory _$_SectionReference.fromJson(Map<String, dynamic> json) =>
      _$$_SectionReferenceFromJson(json);

  @override
  final String title;
  @override
  final String path;

  @override
  String toString() {
    return 'SectionReference(title: $title, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionReference &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionReferenceCopyWith<_$_SectionReference> get copyWith =>
      __$$_SectionReferenceCopyWithImpl<_$_SectionReference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionReferenceToJson(
      this,
    );
  }
}

abstract class _SectionReference implements SectionReference {
  const factory _SectionReference(
      {required final String title,
      required final String path}) = _$_SectionReference;

  factory _SectionReference.fromJson(Map<String, dynamic> json) =
      _$_SectionReference.fromJson;

  @override
  String get title;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_SectionReferenceCopyWith<_$_SectionReference> get copyWith =>
      throw _privateConstructorUsedError;
}
