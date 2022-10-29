part of message_view;

abstract class DeleteRepository {
  Future<void> fetchData(String id);
}

class DeleteRepo extends DeleteRepository {
  @override
  Future<void> fetchData(String id) async {
    var token = await SharedService.loginDetails();

    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${token!.token}"
    };
    http.Response response =
        await BaseClient().delete(ApiPath.delete + id, reqheaders);
    if (response.statusCode == 204) {
      Get.snackbar(
        "Delete",
        "Message Delete Successfull",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (response.statusCode == 404) {
      Get.snackbar(
        "Failed",
        "Resource not found",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar(
        "Failed",
        "Something Went Wrong",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
