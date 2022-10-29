part of routes;

abstract class Routes {
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const registration = _Paths.registration;
  static const home = _Paths.home;
  static const message = _Paths.message;
}

abstract class _Paths {
  static const splash = '/splash/';
  static const login = '/login/';
  static const registration = '/registration/';
  static const home = '/home/';
  static const message = '/message/';
}
