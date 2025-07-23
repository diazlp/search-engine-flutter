import 'package:get/get.dart';
import '../views/home_view.dart';
import '../views/login_view.dart';
import '../views/register_view.dart';
import '../views/profile_view.dart';
import '../views/splash_screen.dart';
import '../views/search_view.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/splash', page: () => const SplashScreen()),
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/register', page: () => RegisterView()),
    GetPage(name: '/home', page: () => HomeView()),
    GetPage(name: '/search', page: () => SearchView()),
    GetPage(name: '/profile', page: () => ProfileView()),
  ];
}
