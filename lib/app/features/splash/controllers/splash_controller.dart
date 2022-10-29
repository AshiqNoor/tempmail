part of splash;

class SplashController extends GetxController {
  void validateUser() async {
    await Future.delayed(const Duration(seconds: 2));
    bool result = await SharedService.isLoggedIn();
    if (result) {
      Get.offNamed(Routes.home);
    } else {
      Get.offNamed(Routes.login);
    }
  }

  @override
  void onInit() async {
    validateUser();
    super.onInit();
  }
}
