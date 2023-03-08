import 'package:flutter/foundation.dart';

enum ColorizerMode { print, debugPrint, returnString }

class Colorizer {
  /// This method is __used to colorize the terminal output__.
  ///
  /// It can be used to print, debugPrint or return a string.
  static dynamic colorize({
    required ColorizerMode mode,
    required String text,
    String? emoji,
    ColorizerTextColor textColor = ColorizerTextColor.reset,
    ColorizerBackgroundColor backgroundColor = ColorizerBackgroundColor.reset,
  }) {
    switch (mode) {
      case ColorizerMode.debugPrint:
        emoji = emoji ?? '';
        debugPrint(
          '$emoji ${textColor.color}${backgroundColor.color} $text\x1B[0m'
              .trim(),
        );
        break;
      case ColorizerMode.print:
        if (kDebugMode) {
          emoji = emoji ?? '';
          print(
            '$emoji ${textColor.color}${backgroundColor.color} $text\x1B[0m',
          );
        }
        break;
      case ColorizerMode.returnString:
        if (kDebugMode) {
          emoji = emoji ?? '';
          return '$emoji ${textColor.color}${backgroundColor.color} $text\x1B[0m';
        }
        break;
    }
  }

  /// shortcut for colorizing with red in [ColorizerMode.print]
  static String colorizeWithRed({required String text}) {
    return colorize(
      mode: ColorizerMode.returnString,
      text: text,
      textColor: ColorizerTextColor.red,
    );
  }

  /// shortcut for colorizing with yellow in [ColorizerMode.print]
  static String colorizeWithYellow({required String text}) {
    return colorize(
      mode: ColorizerMode.returnString,
      text: text,
      textColor: ColorizerTextColor.yellow,
    );
  }

  /// shortcut for colorizing with green in [ColorizerMode.print]
  static String colorizeWithGreen({required String text}) {
    return colorize(
      mode: ColorizerMode.returnString,
      text: text,
      textColor: ColorizerTextColor.green,
    );
  }

  /// shortcut for colorizing with brightMagenta in [ColorizerMode.print]
  static String colorizeWithBrightMagenta({required String text}) {
    return colorize(
      mode: ColorizerMode.returnString,
      text: text,
      textColor: ColorizerTextColor.brightMagenta,
    );
  }

  /// shortcut for colorizing a warning in [ColorizerMode.debugPrint]
  static void riseWarning(
    String text,
  ) {
    colorize(
      mode: ColorizerMode.debugPrint,
      text: text,
      emoji: '🚩',
      textColor: ColorizerTextColor.red,
    );
  }
}

enum ColorizerTextColor {
  reset('\x1B[39m'),
  black('\x1B[30m'),
  red('\x1B[31m'),
  green('\x1B[32m'),
  yellow('\x1B[33m'),
  blue('\x1B[34m'),
  magenta('\x1B[35m'),
  cyan('\x1B[36m'),
  white('\x1B[37m'),
  gray('\x1B[90m'),
  brightRed('\x1B[91m'),
  brightGreen('\x1B[92m'),
  brightYellow('\x1B[93m'),
  brightBlue('\x1B[94m'),
  brightMagenta('\x1B[95m'),
  brightCyan('\x1B[96m'),
  brightWhite('\x1B[97m');

  const ColorizerTextColor(this.color);
  final String color;
}

enum ColorizerBackgroundColor {
  reset('\x1B[49m'),
  black('\x1B[40m'),
  red('\x1B[41m'),
  green('\x1B[42m'),
  yellow('\x1B[43m'),
  blue('\x1B[44m'),
  magenta('\x1B[45m'),
  cyan('\x1B[46m'),
  white('\x1B[47m'),
  gray('\x1B[100m'),
  brightRed('\x1B[101m'),
  brightGreen('\x1B[102m'),
  brightYellow('\x1B[103m'),
  brightBlue('\x1B[104m'),
  brightMagenta('\x1B[105m'),
  brightCyan('\x1B[106m'),
  brightWhite('\x1B[107m');

  const ColorizerBackgroundColor(this.color);
  final String color;
}
