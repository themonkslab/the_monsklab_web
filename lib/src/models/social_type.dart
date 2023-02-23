import 'package:the_monkslab_web/src/constants/_index.dart';

enum SocialsType {
  facebook(AppAssets.facebookLogo),
  instagram(AppAssets.instagramLogo),
  linkedin(AppAssets.linkedinLogo),
  twitter(AppAssets.twitterLogo);

  const SocialsType(this.socialAsset);
  final String socialAsset;
}
