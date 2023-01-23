import 'package:world_time/pages/splash_screen.dart';

class Routes {
  static Map<String, Function> getRoutes() {
    return {
      '/': (context) => SplashScreen(),
    };
  }
}