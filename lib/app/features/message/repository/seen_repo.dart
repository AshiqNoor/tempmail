part of message_view;

abstract class SeenRepository {
  Future<dynamic> fetchData(SeenReqModel model, String id);
}

class SeenRepo extends SeenRepository {
  Map<String, dynamic> customresponse = {
    "context": null,
    "id": null,
    "type": null,
    "seen": null,
  };
  @override
  Future<SeenResModel> fetchData(SeenReqModel model, String id) async {
    var token = await SharedService.loginDetails();

    Map<String, String> reqheaders = {
      "Content-Type": "application/ld+json",
      "Authorization": "Bearer ${token!.token}"
    };
    http.Response response = await BaseClient()
        .patch(ApiPath.seen + id, reqheaders, seenReqModelToJson(model));
    if (response.statusCode == 200) {
      return seenResModelFromJson(response.body);
    } else if (response.statusCode == 422) {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return seenResModelFromJson(jsonEncode(customresponse));
    } else {
      Get.snackbar(
        "Session Expire",
        "Something Went wrong",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return seenResModelFromJson(jsonEncode(customresponse));
    }
  }
}
