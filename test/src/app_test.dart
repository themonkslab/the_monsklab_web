import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

import 'utils/common.dart';

void main() {
  group('App', () {
    TestHelper.initSettings();
    testWidgets('renders AppView', (tester) async {
      await tester.binding.setSurfaceSize(const Size(800, 600));

      await tester.pumpWidget(
        RepositoryProvider<CoursesRepository>(
          create: (context) => FakeFileCoursesRepository(),
          child: BlocProvider.value(
            value: LocaleCubit(),
            child: const AppPage(),
          ),
        ),
      );
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
