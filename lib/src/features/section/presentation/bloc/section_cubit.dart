import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/models/section.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(const SectionState(status: SectionStatus.initial));

  final CoursesRepository _coursesRepository;

  Future<void> fetchSection(
    String sectionPath,
    String coursePath,
    String groupName,
  ) async {
    emit(state.copyWith(status: SectionStatus.loading));
    try {
      final section = await _coursesRepository.fetchSection(
        sectionPath,
        coursePath,
        groupName,
      );

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

class SectionState extends Equatable {
  const SectionState({
    required this.status,
    this.section,
  });

  final SectionStatus status;
  final Section? section;

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
  String toString() => '''SectionState(${Colorizer.colorizeWithBrightMagenta(text: 'status:')} $status,
      section: ${section?.title})''';
}
