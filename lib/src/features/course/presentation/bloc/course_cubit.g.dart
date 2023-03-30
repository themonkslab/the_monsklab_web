// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseState _$CourseStateFromJson(Map<String, dynamic> json) => CourseState(
      status: $enumDecode(_$CourseStatusEnumMap, json['status']),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseStateToJson(CourseState instance) =>
    <String, dynamic>{
      'status': _$CourseStatusEnumMap[instance.status]!,
      'course': instance.course,
    };

const _$CourseStatusEnumMap = {
  CourseStatus.initial: 'initial',
  CourseStatus.loading: 'loading',
  CourseStatus.success: 'success',
  CourseStatus.failure: 'failure',
};
