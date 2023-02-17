import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class FakeCoursesApi extends CoursesApi {

  final Article article = const Article(
    id: 'id', 
    title: 'title', 
    description: 'description', 
    content: 'content', 
    author: Author(name: 'name', picture: 'picture'), 
    published: 'published',
  );

  final Course course = Course(
    id: 'id', 
    title: 'title', 
    description: 'description', 
    sections: List.of({
        const SectionReference(
        title: 'title', 
        path: 'path',
      )
    }),
  );

  final LearningPath learningPath = LearningPath(
    id: 'id', 
    title: 'title', 
    courses: List.of({const CourseReference(title: 'title', path: 'path')})
  );

  final section = Section(
    id: 'id', 
    title: 'title', 
    description: 'description', 
    articles: List.of({const ArticleReference(title: 'title', path: 'path')})
  );

  @override
  Future<void> deleteArticle(String id) async {
    
  }

  @override
  Future<void> deleteSection(String id) async {

  }

  @override
  Future<Article> getArticle(String path) async {
    return article;
  }

  @override
  Future<Course> getCourse(String path) async {
    return course;
  }

  @override
  Future<LearningPath> getLearningPath(String path) async {
    return learningPath;
  }

  @override
  Future<Section> getSection(String path) async {
    return section;
  }

  @override
  Future<void> setArticle(String id, Map<String, dynamic> content) async {
    
  }

  @override
  Future<void> setCourse(String id, String title, String description, List sectionsList) async {

  }

  @override
  Future<void> setSection(String id, Map<String, dynamic> content) async {

  }
}