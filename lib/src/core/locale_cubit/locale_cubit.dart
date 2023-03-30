import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleState.initial());

  setLocale(Locale locale) {
    emit(state.copyWith(locale: locale));
  }
}
