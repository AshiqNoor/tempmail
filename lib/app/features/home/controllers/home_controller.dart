part of home;

class HomeController extends GetxController {
  var id = "".obs;
  var messageId = "";
  var address = "".obs;
  var isLoading = false.obs;
  var isEmpty = false.obs;
  late List<HydraMember> result = [];

  @override
  void onInit() {
    getmessages();
    getuserprofile();
    super.onInit();
  }

  Future<void> getmessages() async {
    isLoading.value = true;

    MessagesResModel response = await HomeRepo().fetchData();

    if (response.hydraTotalItems != null) {
      if (response.hydraTotalItems == 0) {
        isEmpty.value = true;
        isLoading.value = false;
      } else {
        isEmpty.value = false;
        result = response.hydraMember!;
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
    }
  }

  Future<void> getuserprofile() async {
    ProfileResModel response = await ProfileRepo().fetchData();

    if (response.address != null) {
      address.value = response.address!;
      id.value = response.profileResModelId!;
    }
  }

  Future<void> logout() async {
    try {
      await SharedService.logOut();
      Get.offNamed(Routes.login);
    } catch (_) {}
  }
}
