import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/section.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

part 'section_cubit.freezed.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit({
    required CoursesRepository coursesRepository,
    required this.path,
  })  : _coursesRepository = coursesRepository,
        super(const SectionState());

  final CoursesRepository _coursesRepository;
  final String path;

  Future<void> fetchSection() async {
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
}

enum SectionStatus { initial, loading, success, failure }

@freezed
class SectionState with _$SectionState {
  const factory SectionState({
    @Default(SectionStatus.initial) SectionStatus status,
    Section? section,
  }) = _SectionState;
}
