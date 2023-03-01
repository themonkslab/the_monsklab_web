import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class FakeCoursesApi extends CoursesApi {

  static const Article article = Article(
    id: 'id', 
    title: 'title', 
    description: 'description', 
    content: 'content', 
    author: Author(name: 'name', picture: 'picture'), 
    published: 'published',
  );

  static final Course course = Course(
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

  static final Courses courses = Courses(
    id: 'id', 
    title: 'title', 
    courses: List.of({const CourseReference(title: 'title', path: 'path')}), 
    shouldUpdate: false,
  );

  static final section = Section(
    id: 'id', 
    title: 'title', 
    description: 'description', 
    articles: List.of({const ArticleReference(title: 'title', path: 'path')})
  );

  Map<String, dynamic>? lastUpdatedContent;

  @override
  Future<void> deleteArticle(String id) async {
    
  }

  @override
  Future<void> deleteSection(String id) async {

  }

  @override
  Future<Article> getArticle(String path) async {
    return article.copyWith(id: path);
  }

  @override
  Future<Course> getCourse(String path) async {
    return course.copyWith(id: path);
  }

  @override
  Future<Courses> getCourses(String id) async {
    return courses.copyWith(id: id);
  }

  @override
  Future<Section> getSection(String path) async {
    return section.copyWith(id: path);
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
  
  @override
  Future<void> updateLearningPath(String id, Map<String, dynamic> content) async {
    lastUpdatedContent = content;
  }
}