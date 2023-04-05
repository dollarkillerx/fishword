class AppRoutes {
  static const String Home = '/home';
  static const String Recommend = '/recommend'; // 推荐屏
  static const String Login = '/login'; // login

  static const String NotFound = '/unknown';

  static String pathJoin(List<String> paths) {
    return paths.join("");
  }
}

