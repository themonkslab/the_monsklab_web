import 'package:flutter/material.dart' show EdgeInsets, SizedBox;

/// Constant doubles to be used in the app (paddings, gaps, rounded corners etc.)
class AppSizes {
  // * Widgets
  static const appProfilePhotoHeight = 48.0;
  static const appProfilePhotoWidth = 48.0;

  // * ContentContainers
  static const desktopContentContainer = 760.0;
  static const largeContentContainer = 960.0;
  static const centeredTextContainer = 540.0;
}

/// __Customized Paddings Shortcuts__
///
/// _gapW4_: SizedBox(width: AppSizes.p4)
///
/// _gapH4_: SizedBox(height: AppSizes.p4)
class AppGaps {
  //* Constant gap widths
  static const gapW4 = SizedBox(width: 4);
  static const gapW8 = SizedBox(width: 8);
  static const gapW12 = SizedBox(width: 12);
  static const gapW16 = SizedBox(width: 16);
  static const gapW20 = SizedBox(width: 20);
  static const gapW24 = SizedBox(width: 24);
  static const gapW32 = SizedBox(width: 32);
  static const gapW48 = SizedBox(width: 48);
  static const gapW64 = SizedBox(width: 64);

  //* Constant gap heights
  static const gapH4 = SizedBox(height: 4);
  static const gapH8 = SizedBox(height: 8);
  static const gapH12 = SizedBox(height: 12);
  static const gapH16 = SizedBox(height: 16);
  static const gapH20 = SizedBox(height: 20);
  static const gapH24 = SizedBox(height: 24);
  static const gapH32 = SizedBox(height: 32);
  static const gapH48 = SizedBox(height: 48);
  static const gapH64 = SizedBox(height: 64);
}

/// __Customized Paddings Shortcuts__
///
/// _padAll4_: EdgeInsets.all(4.0)
///
/// _padH4_: EdgeInsets.symmetric(horizontal: 4.0)
///
/// _padV4_: EdgeInsets.symmetric(vertical: 4.0)
class AppPaddings {
//* All
  static const padAll0 = EdgeInsets.zero;
  static const padAll4 = EdgeInsets.all(4);
  static const padAll12 = EdgeInsets.all(12);
  static const padAll16 = EdgeInsets.all(16);
  static const padAll24 = EdgeInsets.all(24);
  static const padAll32 = EdgeInsets.all(32);
  static const padAll40 = EdgeInsets.all(40);

//* Only
  static const padTop12 = EdgeInsets.only(top: 12);
  static const padBottom40 = EdgeInsets.only(bottom: 40);

//* Symmetric Horizontal
  static const padH4 = EdgeInsets.symmetric(horizontal: 4);
  static const padH8 = EdgeInsets.symmetric(horizontal: 8);
  static const padH12 = EdgeInsets.symmetric(horizontal: 12);
  static const padH16 = EdgeInsets.symmetric(horizontal: 16);
  static const padH24 = EdgeInsets.symmetric(horizontal: 24);
  static const padH48 = EdgeInsets.symmetric(horizontal: 48);

//* Symmetric Vertical
  static const padV4 = EdgeInsets.symmetric(vertical: 4);
  static const padV12 = EdgeInsets.symmetric(vertical: 12);
  static const padV28 = EdgeInsets.symmetric(vertical: 28);
}
