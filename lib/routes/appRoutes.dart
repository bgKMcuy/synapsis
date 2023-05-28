part of 'appPages.dart';

abstract class Routes {
  Routes._();

  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const regis = _Paths.regis;
  static const soc = _Paths.soc;
}

abstract class _Paths {
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';
  static const regis = '/regis';
  static const soc = '/SoC';
}