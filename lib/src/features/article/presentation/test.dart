import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({
    Key? key,
  }) : super(key: key);
  // final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('teste'));
    // final screenType = context.getScreenType();
    // final isDesktopOrLarge =
    //     screenType == ScreenType.desktop || screenType == ScreenType.large;

    // if (screenType == ScreenType.phone) {
    //   return Scaffold(
    //     body: ListView(
    //       padding: const EdgeInsets.symmetric(horizontal: 24.0),
    //       children: <Widget>[
    //         gapH24,
    //         const ArticleHeader(
    //             author: AppAuthor(
    //           name: 'Mau Di Bert',
    //           picture: AppAssets.mauPicture,
    //         )),
    //         gapH8,
    //         const AppSocials(),
    //         gapH24,
    //         ArticleBody(data: data),
    //       ],
    //     ),
    //   );
    // } else {
    //   return Scaffold(
    //     backgroundColor: Colors.red[400],
    //     body: Center(
    //       child: Container(
    //         color: Colors.white,
    //         width: isDesktopOrLarge ? 960.0 : 760.0,
    //         child: ListView(
    //           padding: const EdgeInsets.symmetric(horizontal: 36.0),
    //           children: <Widget>[
    //             gapH24,
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: const [
    //                 ArticleHeader(
    //                     author: AppAuthor(
    //                   name: 'Mau Di Bert',
    //                   picture: AppAssets.mauPicture,
    //                 )),
    //                 AppSocials(),
    //               ],
    //             ),
    //             gapH24,
    //             ArticleBody(data: data),
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }
  }
}
