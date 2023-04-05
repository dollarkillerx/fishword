import 'package:fishword/pages/dictionary/pages/binding.dart';
import 'package:fishword/pages/dictionary/pages/index.dart';
import 'package:fishword/pages/login/binding.dart';
import 'package:fishword/pages/login/index.dart';
import 'package:get/get.dart';
import '../../components/unknown_route.dart';
import '../../pages/home/binding.dart';
import '../../pages/home/index.dart';
import 'app_routes.dart';

class AppPages {
  // static const InitRoute = AppRoutes.Recommend;
  static const InitRoute = AppRoutes.Login;

  static final routers = [
    // 主页导航
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // 主页导航
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.DictionaryDetails,
      page: () => DictionaryDetailsPage(),
      binding: DictionaryDetailsBinding(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => UnknownRoute(),
  );
}
