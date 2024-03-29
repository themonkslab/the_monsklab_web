import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum ScreenType {
  phone(500),
  tablet(730),
  desktop(1024),
  large(1200);

  const ScreenType(this.width);
  final double width;
}

/// Easy access to UI common functions
extension UIHelpers on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  ScreenType getScreenType() {
    final width = MediaQuery.of(this).size.width;
    if (width >= ScreenType.large.width) return ScreenType.large;
    if (width >= ScreenType.desktop.width) return ScreenType.desktop;
    if (width >= ScreenType.tablet.width) return ScreenType.tablet;
    return ScreenType.phone;
  }
}

/// A simple placeholder that can be used to search all the hardcoded strings
/// in the code (useful to identify strings that need to be localized).
extension StringX on String {
  String get hardcoded => this;
}

extension DateTimeX on DateTime {
  String get toReadable => DateFormat.yMMMMEEEEd().format(this);
}
