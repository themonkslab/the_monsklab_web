import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppLocalizations localize(context) {
  final appLocalization = AppLocalizations.of(context);
  if (appLocalization != null) {
    return AppLocalizations.of(context)!;
  } else {
    throw Exception('AppLocalizations.of(context) == null');
  }
}
