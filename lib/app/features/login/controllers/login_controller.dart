part of login;

class LoginController extends GetxController with ValidatorMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  var domainname = "Select Domain";
  final isLoading = false.obs;
  final isObsecure = true.obs;
  List<HydraMember> result = [];

  void goToRegistrationScreen() {
    Get.offNamed(Routes.registration);
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      if (domainname != "Select Domain") {
        var adderss = "${email.text}@$domainname";
        isLoading.value = true;
        LoginReqModel reqModel = LoginReqModel(
          address: adderss,
          password: password.text,
        );
        LoginResModel resmodel = await SignInRepo().fetchData(reqModel);
        if (resmodel.token != null) {
          isLoading.value = false;
          Get.offNamed(Routes.home);
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
    }
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

  void obsecure() {
    isObsecure.value = !isObsecure.value;
  }
}
