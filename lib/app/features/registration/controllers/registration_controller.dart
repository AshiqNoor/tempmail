part of register;

class RegistrationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  var domainname = "Select Domain";
  final isLoading = false.obs;
  final isObsecure = true.obs;
  List<HydraMember> result = [];
  void goToLoginScreen() {
    Get.offNamed(Routes.login);
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      if (password.text == confirmpassword.text) {
        if (domainname != "Select Domain") {
          var adderss = "${email.text}@$domainname";
          isLoading.value = true;
          isLoading.value = true;
          RegisterReqModel reqModel = RegisterReqModel(
            address: adderss,
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
            "Select Domain",
            backgroundColor: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
          );
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

  void setdomain(String value) {
    domainname = value;
    update();
  }

  getdomain() async {
    DomainResModel response = await DomainRepo().fetchData();
    if (response.hydraTotalItems != null) {
      result = response.hydraMember!;
      update();
    }
  }

  @override
  void onInit() async {
    await getdomain();
    super.onInit();
  }
}
