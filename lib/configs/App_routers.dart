// class AppRoutes {
//   static final pages = {
//     '/': (context) => SplashPage(),
//     '/login': (context) => LoginPage(),
//     '/register': (context) => RegisterPage(),
//     '/forgot': (context) => ForGotPage(),
//     '/checkmail': (context) => CheckMailPage()
//   };
//   static const login = '/login';
//   static const register = '/register';
//   static const splash = '/';
//   static const main = '/main';
//   static const forgot = '/forgot';
//   static const checkmail = '/checkmail';
// }

import 'package:dumbell/pages/intro_page/index.dart';

class AppRouter {
  static final pages = {
    '/': (context) => indexPage(),
    //   '/login': (context) => LoginPage(),
    //   '/register': (context) => RegisterPage(),
    //   '/forgot': (context) => ForGotPage(),
    //   '/checkmail': (context) => CheckMailPage()
  };
  // static const login = '/login';
  // static const register = '/register';
  static const index = '/';
  // static const main = '/main';
  // static const forgot = '/forgot';
  // static const checkmail = '/checkmail';
}
