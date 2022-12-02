import 'package:email_form/views/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'home_screen.dart';

const String splash = '/splash-screen';
const String homepage = '/home_screen';

List<GetPage> getPages = [

  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: homepage, page: () =>  HomeScreen()),


];