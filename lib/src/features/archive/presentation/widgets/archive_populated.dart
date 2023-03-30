import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class ArchivePopulated extends StatelessWidget {
  const ArchivePopulated({
    required this.isPhoneOrTablet,
    required this.coursesList,
    super.key,
  });

  final bool isPhoneOrTablet;
  final List<Courses> coursesList;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: localize(context).archiveViewTitle,
        primaryColor: Theme.of(context).primaryColor.value,
      ),
    );

    return AppResponsiveScaffold(
      child: Padding(
        padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padH24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.gapH48,
            Text(
              localize(context).archiveViewTitle,
              style: isPhoneOrTablet ? AppTextStyles.h1HeaderPhone : AppTextStyles.h1Header,
            ),
            AppGaps.gapH20,
            Text(
              localize(context).archiveViewDescription,
              style: AppTextStyles.p,
            ),
            AppGaps.gapH64,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var courses in coursesList)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courses.title,
                        style: isPhoneOrTablet ? AppTextStyles.h2Phone : AppTextStyles.h2,
                      ),
                      AppGaps.gapH12,
                      for (var course in courses.courses)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: AppHypertext(
                            text: course.title,
                            onTap: () => context.beamToNamed(
                              '/${context.read<LocaleCubit>().state.locale.toString()}/course/${course.path}',
                            ),
                            onTertiaryTapUp: () => UrlHelper.launchUrl(
                              '${AppUrls.monkslabWeb}course/${course.path}',
                            ),
                            style: isPhoneOrTablet ? AppTextStyles.h3Phone : AppTextStyles.h3,
                          ),
                        )
                    ],
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
