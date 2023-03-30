import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/locale_cubit/locale_cubit.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (blocContext, state) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  'español',
                  style: AppTextStyles.caption.copyWith(
                    color: state.locale == const Locale('es') ? AppColors.cyan : Colors.white,
                    fontWeight: state.locale == const Locale('es') ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                Switch(
                  value: state.locale == const Locale('en'),
                  onChanged: (value) {
                    final locale = value ? const Locale('en') : const Locale('es');
                    Beamer.of(context).beamToNamed(
                      "/${locale.languageCode}",
                      transitionDelegate: const NoAnimationTransitionDelegate(),
                    );
                  },
                  activeColor: AppColors.secondaryLight,
                  activeTrackColor: AppColors.secondaryLighter,
                  inactiveThumbColor: Colors.cyan,
                  inactiveTrackColor: Colors.cyan[100],
                ),
                Text(
                  'english',
                  style: AppTextStyles.caption.copyWith(
                    color: state.locale == const Locale('en') ? AppColors.secondaryLight : Colors.white,
                    fontWeight: state.locale == const Locale('en!') ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
