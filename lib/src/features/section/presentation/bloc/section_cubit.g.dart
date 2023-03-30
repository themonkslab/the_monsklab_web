// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionState _$SectionStateFromJson(Map<String, dynamic> json) => SectionState(
      status: $enumDecode(_$SectionStatusEnumMap, json['status']),
      section: json['section'] == null
          ? null
          : Section.fromJson(json['section'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SectionStateToJson(SectionState instance) =>
    <String, dynamic>{
      'status': _$SectionStatusEnumMap[instance.status]!,
      'section': instance.section,
    };

const _$SectionStatusEnumMap = {
  SectionStatus.initial: 'initial',
  SectionStatus.loading: 'loading',
  SectionStatus.success: 'success',
  SectionStatus.failure: 'failure',
};
