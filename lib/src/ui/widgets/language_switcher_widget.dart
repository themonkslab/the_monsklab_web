import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return Container(
          color: Colors.white,
          child: SizedBox(
            width: 85,
            child: DropdownButton<Locale>(
              borderRadius: BorderRadius.circular(10),
              dropdownColor: Colors.white,
              value: provider.locale,
              underline: Container(),
              items: const [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('es'),
                  child: Text('Español'),
                ),
              ],
              onChanged: (value) async {
                final locale = value ?? const Locale('en');
                provider.setLocale(locale);
                await context.read<CoursesRepository>().fetchCoursesFromLocale(locale);
              },
            ),
          ),
        );
      },
    );
  }
}
