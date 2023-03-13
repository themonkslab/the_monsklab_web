import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository/courses_repository.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
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
                    color: provider.locale == const Locale('es') ? AppColors.cyan : Colors.white,
                    fontWeight: provider.locale == const Locale('es') ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                Switch(
                  value: provider.locale == const Locale('en'),
                  onChanged: (value) async {
                    final locale = value ? const Locale('en') : const Locale('es');
                    provider.setLocale(locale);
                    await context.read<CoursesRepository>().fetchCoursesFromLocale(locale);
                  },
                  activeColor: AppColors.secondaryLight,
                  activeTrackColor: AppColors.secondaryLighter,
                  inactiveThumbColor: Colors.cyan,
                  inactiveTrackColor: Colors.cyan[100],
                ),
                Text(
                  'english',
                  style: AppTextStyles.caption.copyWith(
                    color: provider.locale == const Locale('en') ? AppColors.secondaryLight : Colors.white,
                    fontWeight: provider.locale == const Locale('en!') ? FontWeight.bold : FontWeight.normal,
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
