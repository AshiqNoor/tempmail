part of register;

class RegistrationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  final isLoading = false.obs;
  final isObsecure = true.obs;
  void goToLoginScreen() {
    Get.offNamed(Routes.login);
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      if (password.text == confirmpassword.text) {
        isLoading.value = true;
        RegisterReqModel reqModel = RegisterReqModel(
          address: email.text,
          password: password.text,
        );
        RegisterResModel resmodel = await RegisterRepo().fetchData(reqModel);
        isLoading.value = false;
        if (resmodel.message != null) {
          Get.snackbar(
            "Registration Success",
            resmodel.message.toString(),
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
          );

          goToLoginScreen();
        } else {
          isLoading.value = false;
        }
      } else {
        Get.snackbar(
          "Warning",
          "Password not Match",
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  void obsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
