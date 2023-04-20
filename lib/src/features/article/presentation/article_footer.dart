// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class ArticleFooter extends StatelessWidget {
  const ArticleFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: AppColors.black,
      child: Center(
        child: Padding(
          padding: AppPaddings.padAll16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${localize(context).reachOutOn} ',
                style: AppTextStyles.p.copyWith(color: AppColors.white),
              ),
              AppHypertext(
                text: 'Discord',
                style: AppTextStyles.p.copyWith(color: AppColors.white),
                onTap: () => UrlHelper.launchUrl(AppUrls.discord),
              )
            ],
          ),
        ),
      ),
    );
  }
}
