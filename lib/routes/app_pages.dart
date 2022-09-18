import 'package:get/get.dart';
import 'package:social_app/pages/page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: AppRoutes.comment,
      page: () => const CommentPage(),
    )
  ];
}
