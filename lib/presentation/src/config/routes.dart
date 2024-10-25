abstract class Routes  {
  static const String overview = '/';
  static const String projects = '/projects';
  static const String services = '/services';
  static const String careers = '/careers';
  static const String projectDetail = '/projects/:projectId';
  static const String credit = '/credit';

  static String projectDetailProvider(String id) {
    return '/projects/$id';
  }
}