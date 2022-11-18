import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/article/_index.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

import 'bloc/article_cubit.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticleCubit>(
      create: (context) => ArticleCubit(
        coursesRepository: context.read<CoursesRepository>(),
        path: path,
      )..fetchArticle(),
      child: const ArticleView(),
    );
  }
}

class ArticleView extends StatefulWidget {
  const ArticleView({
    Key? key,
  }) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final scrollController = ScrollController();
  late bool isHeaderOnScreen;
  late double screenHeight;

  @override
  void initState() {
    super.initState();
    isHeaderOnScreen = true;

    scrollController.addListener(() {
      if (scrollController.offset > screenHeight) {
        isHeaderOnScreen = false;
        setState(() {});
      } else {
        isHeaderOnScreen = true;
        setState(() {});
      }
    });
  }

  final chapterContent = '''
# La verdadera intro

@Mau Di Bert

Creemos que si estás acá, es porque estás interesado o interesada en volverte un/a profesional al nivel requerido para trabajar en Estados Unidos y Europa.

Para ello, preparamos un camino de aprendizaje pensado de atrás hacia adelante: __vas a aprender a testear como primer paso__, de manera que escribir código de alta calidad sea una extensión de tu cuerpo y puedas __destinar tiempo a lo más divertido, crear__.

## Comunidad

Antes de que sigas, [sumate a nuestra comunidad gratuita en Discord](), donde vas a encontrar un grupo hermoso de personas apasionadas por aprender y crecer en este mundo.

Ahí vas a poder presentarte, hacer preguntas, aprender mientras ayudás a otros y a otras a resolver las suyas y divertirte con personas como vos, apasionadas por aprender y compartir este apasionante mundo!

## Algunas recomendaciones

No tengas miedo en __tomarte el tiempo que sea necesario para entender__: mejor lento pero seguro. Volvé a lecciones pasadas, repetí los ejercicios y tratá de aprender como si fueras a enseñarlo.

No copies y pegues __el código__ sino __escribilo vos mismo o misma.__ Es impresionante lo que sucede cuando para escribirlo tenemos que entenderlo.

Tratá de __leer todo desde el comienzo y tranquilamente__: artículos, código, mensajes de error. Traducí lo que no entiendas si está en inglés.

Además, vas a encontrar muchos términos en _inglés_ en cursiva aquí mismo: recomendamos que organices __tu propio glosario de estos términos__ que te va a ayudar a fijar estos conceptos.

Vas a notar, que mucha parte del tiempo, no ahondamos en ciertos conceptos o explicaciones pero quedate tranquilo que eso llegará más adelante. Lo hacemos para que puedas avanzar, aprendiendo lo suficiente para crear y no frustrarte!

__Vas a aprender haciendo__ así que tratá de hacer los ejercicios alternativos propuestos e inventar nuevos y compartirlos luego con otrxs en nuestro Discord.

## Respondiendo a tus preguntas

Si hay algo que no entendés, seguí [esta guía]() para tratar de responderte vos mismx en primer lugar (una habilidad que todo programador debe dominar) y sino lo lográs, buscar respuestas de forma respetuosa e inteligente para con el tiempo de los otros y otras.
''';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(
      builder: ((context, state) {
        screenHeight = MediaQuery.of(context).size.height;

        final chapter = state.article;
        // TODO use build.when?
        switch (state.status) {
          case ArticleStatus.loading:
            return const AppLoader();
          case ArticleStatus.failure:
            return const AppFailure();
          case ArticleStatus.success:
            return Scaffold(
              appBar: isHeaderOnScreen
                  ? const AppAppBar(
                      elevation: 0,
                      showSocials: false,
                      backgroundColor: AppColors.black,
                    )
                  : const AppAppBar(showSocials: true),
              body: ListView(
                controller: scrollController,
                children: <Widget>[
                  ArticleHeader(chapter: chapter!),
                  AppGaps.gapH24,
                  ArticleBody(data: chapterContent),
                  AppGaps.gapH48,
                ],
              ),
            );
          default:
            return const AppFailure();
        }
      }),
    );
    // screenHeight = MediaQuery.of(context).size.height;
    // final chapter = flutterLearningPath.courses[widget.courseId]
    //     .sections[widget.sectionId].chapters[widget.chapterId];

    // final screenType = context.getScreenType();
    // final isDesktopOrLarge =
    //     screenType == ScreenType.desktop || screenType == ScreenType.large;

    // if (screenType == ScreenType.phone) {
    //   return Scaffold(
    //     appBar: isHeaderOnScreen
    //         ? const AppAppBar(
    //             elevation: 0,
    //             showSocials: false,
    //             backgroundColor: AppColors.black,
    //           )
    //         : const AppAppBar(showSocials: true),
    //     body: ListView(
    //       controller: scrollController,
    //       children: <Widget>[
    //         ArticleHeader(chapter: chapter),
    //         AppGaps.gapH24,
    //         ArticleBody(data: chapter.content),
    //         AppGaps.gapH48,
    //       ],
    //     ),
    //   );
    // } else {
    //   return Scaffold(
    //     appBar: isHeaderOnScreen
    //         ? const AppAppBar(
    //             elevation: 0,
    //             showSocials: false,
    //             backgroundColor: AppColors.black,
    //           )
    //         : const AppAppBar(showSocials: true),
    //     body: SingleChildScrollView(
    //         controller: scrollController,
    //         child: Column(
    //           children: [
    //             ArticleHeader(
    //               chapter: chapter,
    //             ),
    //             AppGaps.gapH24,
    //             Container(
    //                 color: Colors.white,
    //                 width: isDesktopOrLarge
    //                     ? AppSizes.largeContentContainer
    //                     : AppSizes.desktopContentContainer,
    //                 child: ArticleBody(data: chapter.content)),
    //             AppGaps.gapH48,
    //           ],
    //         )),
    //   );
  }
}
