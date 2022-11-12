import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';

part 'archive_state.freezed.dart';

enum ArchiveStatus { initial, loading, success, failure }

@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState({
    @Default(ArchiveStatus.initial) ArchiveStatus status,
    LearningPath? learningPath,
  }) = _ArchiveState;
}
