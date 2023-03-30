import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/models/section.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'section_cubit.g.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(const SectionState(status: SectionStatus.initial));

  final CoursesRepository _coursesRepository;

  Future<void> fetchSection(String path) async {
    emit(state.copyWith(status: SectionStatus.loading));
    try {
      final section = await _coursesRepository.getSection(path);

      emit(
        state.copyWith(
          status: SectionStatus.success,
          section: section,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: SectionStatus.failure));
    }
  }

  @override
  String toString() =>
      'SectionCubit(${Colorizer.colorizeWithBrightMagenta(text: '_coursesRepository:')} $_coursesRepository)';
}

enum SectionStatus { initial, loading, success, failure }

@JsonSerializable()
class SectionState extends Equatable {
  const SectionState({
    required this.status,
    this.section,
  });
  factory SectionState.fromJson(Map<String, dynamic> json) =>
      _$SectionStateFromJson(json);

  final SectionStatus status;
  final Section? section;

  Map<String, dynamic> toJson() => _$SectionStateToJson(this);

  SectionState copyWith({
    SectionStatus? status,
    Section? section,
  }) {
    return SectionState(
      status: status ?? this.status,
      section: section ?? this.section,
    );
  }

  @override
  List<Object?> get props => [status, section];

  @override
  String toString() =>
      '''SectionState(${Colorizer.colorizeWithBrightMagenta(text: 'status:')} $status,
      section: ${section?.title})''';
}
