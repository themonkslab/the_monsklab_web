import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/locale_example.dart';

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return DropdownButton<Locale>(
          value: provider.locale,
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
          onChanged: (value) => provider.setLocale(value ?? const Locale('en')),
        );
      },
    );
  }
}
