import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({
    Key? key,
    required this.locale,
  }) : super(key: key);
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: locale,
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
        await context.setLocale(
          value ?? const Locale('en'),
        );
      },
    );
  }
}
