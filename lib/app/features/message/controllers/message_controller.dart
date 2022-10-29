part of message_view;

class MessageController extends GetxController {
  var messageResModelId = "".obs;
  var fromaddress = "".obs;
  var fromname = "".obs;
  var toaddress = "".obs;
  var toname = "".obs;
  var subject = "".obs;
  var seen = true.obs;
  var flagged = true.obs;
  var isDeleted = false.obs;
  var text = "".obs;
  var createdAt = DateTime.now().obs;
  bool isSeen = true;
  bool unSeen = false;
  var isLoading = false.obs;
  var isVisible = false.obs;
  late List<Form> toa = [];
  Future<void> getmessages(String id) async {
    isLoading.value = true;
    SeenReqModel reqModel = SeenReqModel(
      seen: isSeen,
    );
    await SeenRepo().fetchData(reqModel, id);
    MessageResModel response = await MessageRepo().fetchData(id);

    if (response.id != null) {
      messageResModelId.value = response.messageResModelId!;
      fromaddress.value = response.from!.address;
      fromname.value = response.from!.name;
      subject.value = response.subject!;
      seen.value = response.seen!;
      flagged.value = response.flagged!;
      isDeleted.value = response.isDeleted!;
      text.value = response.text!;
      createdAt.value = response.createdAt!;
      isLoading.value = false;
    } else {
      isLoading.value = false;
    }
  }

  void visibility() {
    isVisible.value = !isVisible.value;
  }

  Future<void> unseenmessages() async {
    SeenReqModel reqModel = SeenReqModel(
      seen: unSeen,
    );
    SeenResModel response =
        await SeenRepo().fetchData(reqModel, messageResModelId.value);
    if (response.id != null) {
      Get.snackbar(
        "Success",
        "Message Unseen",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> deletemessages() async {
    await DeleteRepo().fetchData(messageResModelId.value);
  }

  Future<void> shareWallpaper(String? name) async {
    try {
      switch (name) {
        case "Unseen":
          await unseenmessages();
          break;
        case "Delete":
          await deletemessages();
          goToHomeScreen();
          break;
      }
    } catch (e) {
      //print(e);
    }
  }

  void goToHomeScreen() {
    Get.offNamed(Routes.home);
  }
}
