import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/features/language_switcher/bloc/language_switcher_bloc.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageSwitcherBloc(),
      child: BlocBuilder<LanguageSwitcherBloc, LanguageSwitcherState>(
        builder: (context, state) {
          return LanguageSwitcherWidget(
            language: state.currentLanguage,
            onChange: (value) =>
                context.read<LanguageSwitcherBloc>().add(LanguageSwitcherSwitchAction(switchTo: value ?? Language.en)),
          );
        },
      ),
    );
  }
}

class LanguageSwitcherWidget extends StatelessWidget {
  const LanguageSwitcherWidget({
    Key? key,
    required this.language,
    this.onChange,
  }) : super(key: key);
  final Language language;
  final void Function(Language?)? onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Language>(
      value: language,
      items: [
        DropdownMenuItem(
          value: Language.en,
          child: Text(Language.en.string),
        ),
        DropdownMenuItem(
          value: Language.es,
          child: Text(Language.es.string),
        ),
      ],
      onChanged: onChange,
    );
  }
}
