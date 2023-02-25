part of 'language_switcher_bloc.dart';

abstract class LanguageSwitcherEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LanguageSwitcherSwitchAction extends LanguageSwitcherEvent {
  LanguageSwitcherSwitchAction({
    required this.switchTo,
  });
  final Language switchTo;

  @override
  List<Object?> get props => [switchTo];
}
