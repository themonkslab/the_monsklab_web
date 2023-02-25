import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';

part 'language_switcher_event.dart';
part 'language_switcher_state.dart';

class LanguageSwitcherBloc extends Bloc<LanguageSwitcherEvent, LanguageSwitcherState> {
  LanguageSwitcherBloc() : super(LanguageSwitcherState.inicial()) {
    on<LanguageSwitcherSwitchAction>((event, emit) {
      emit(state.copyWith(currentLanguage: event.switchTo));
    });
  }
}
