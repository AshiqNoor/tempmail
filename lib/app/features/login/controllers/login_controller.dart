part of login;

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final isLoading = false.obs;
  final isObsecure = true.obs;
  void goToRegistrationScreen() {
    Get.offNamed(Routes.registration);
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      LoginReqModel reqModel = LoginReqModel(
        address: email.text,
        password: password.text,
      );
      LoginResModel resmodel = await SignInRepo().fetchData(reqModel);
      if (resmodel.token != null) {
        isLoading.value = false;
        Get.offNamed(Routes.home);
      } else {
        isLoading.value = false;
      }
    }
  }

  void obsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
