part of routes;

abstract class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.registration,
      page: () => const RegistrationScreen(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.message,
      page: () => MessageScreen(
        id: Get.arguments,
      ),
      binding: MessageBinding(),
    )
  ];
}
