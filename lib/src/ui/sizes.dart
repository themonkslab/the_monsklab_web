import 'package:flutter/material.dart' show EdgeInsets, SizedBox;

/// Constant sizes to be used in the app (paddings, gaps, rounded corners etc.)
class AppSizes {
  static const p4 = 4.0;
  static const p8 = 8.0;
  static const p12 = 12.0;
  static const p16 = 16.0;
  static const p20 = 20.0;
  static const p24 = 24.0;
  static const p32 = 32.0;
  static const p48 = 48.0;
  static const p64 = 64.0;

  // * widgets
  static const appProfilePhotoHeight = 48.0;
  static const appProfilePhotoWidth = 48.0;

  // * contentContainers
  static const desktopContentContainer = 760.0;
  static const largeContentContainer = 960.0;
}

/// Constant gap widths
const gapW4 = SizedBox(width: AppSizes.p4);
const gapW8 = SizedBox(width: AppSizes.p8);
const gapW12 = SizedBox(width: AppSizes.p12);
const gapW16 = SizedBox(width: AppSizes.p16);
const gapW20 = SizedBox(width: AppSizes.p20);
const gapW24 = SizedBox(width: AppSizes.p24);
const gapW32 = SizedBox(width: AppSizes.p32);
const gapW48 = SizedBox(width: AppSizes.p48);
const gapW64 = SizedBox(width: AppSizes.p64);

/// Constant gap heights
const gapH4 = SizedBox(height: AppSizes.p4);
const gapH8 = SizedBox(height: AppSizes.p8);
const gapH12 = SizedBox(height: AppSizes.p12);
const gapH16 = SizedBox(height: AppSizes.p16);
const gapH20 = SizedBox(height: AppSizes.p20);
const gapH24 = SizedBox(height: AppSizes.p24);
const gapH32 = SizedBox(height: AppSizes.p32);
const gapH48 = SizedBox(height: AppSizes.p48);
const gapH64 = SizedBox(height: AppSizes.p64);

/// Constant paddings

const pad0 = EdgeInsets.all(0.0);
const padAll16 = EdgeInsets.all(16.0);
const padAll32 = EdgeInsets.all(32.0);
const padH24 = EdgeInsets.symmetric(horizontal: 24.0);
const padV28 = EdgeInsets.symmetric(vertical: 28.0);
