import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';

class AppProfilePhoto extends StatelessWidget {
  const AppProfilePhoto({
    required this.author,
    Key? key,
  }) : super(key: key);
  final AppAuthor author;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.appProfilePhotoWidth,
      height: AppSizes.appProfilePhotoHeight,
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(author.picture),
        ),
      ),
    );
  }
}
