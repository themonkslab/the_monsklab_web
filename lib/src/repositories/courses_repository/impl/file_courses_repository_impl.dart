import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/formatters.dart';

class FileCoursesRepositoryImpl extends FileCoursesRepository {
  FileCoursesRepositoryImpl();

  @override
  Future<String> fetchCoursesIndexString() async {
    String coursesUrl = AppUrls.dreamTeamersCoursesEn;
    switch (locale.toString()) {
      case 'en':
        coursesUrl = AppUrls.dreamTeamersCoursesEn;
        break;
      case 'es':
        coursesUrl = AppUrls.dreamTeamersCoursesEs;
        break;
    }

    return (await HttpApi().getRequest(coursesUrl)).toString();
  }

  @override
  Future<String> getArticleContent(FileArticle fileArticle) async {
    final articleContent =
        (await HttpApi().getRequest(fileArticle.contentUrl!)).toString();
    final articleNameUrl = fileArticle.contentUrl!.split('/').last;
    final folderUrl = fileArticle.contentUrl!.replaceAll(articleNameUrl, '');
    return formatGitHubImagesUrls(articleContent, folderUrl);
  }
}
