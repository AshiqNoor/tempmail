part of home;

abstract class HomeRepository {
  Future<dynamic> fetchData();
}

class HomeRepo extends HomeRepository {
  @override
  Future<MessagesResModel> fetchData() async {
    var token = await SharedService.loginDetails();

    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${token!.token}"
    };
    http.Response response =
        await BaseClient().get(ApiPath.messages, reqheaders);
    if (response.statusCode == 200) {
      return messagesResModelFromJson(response.body);
    } else if (response.statusCode == 401) {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {
        "context": null,
        "id": null,
        "type": null,
        "hydraMember": [],
        "hydraTotalItems": null,
      };
      return messagesResModelFromJson(jsonEncode(customresponse));
    } else {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {
        "context": null,
        "id": null,
        "type": null,
        "hydraMember": [],
        "hydraTotalItems": null,
      };
      return messagesResModelFromJson(jsonEncode(customresponse));
    }
  }
}

class ProfileRepo extends HomeRepository {
  @override
  Future<ProfileResModel> fetchData() async {
    var token = await SharedService.loginDetails();

    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${token!.token}"
    };
    http.Response response =
        await BaseClient().get(ApiPath.profile, reqheaders);
    if (response.statusCode == 200) {
      return profileResModelFromJson(response.body);
    } else if (response.statusCode == 401) {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {
        "context": null,
        "id": null,
        "type": null,
        "profileResModelId": null,
        "address": null,
        "quota": null,
        "used": null,
        "isDisabled": null,
        "isDeleted": null,
        "createdAt": null,
        "updatedAt": null
      };
      return profileResModelFromJson(jsonEncode(customresponse));
    } else {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {
        "context": null,
        "id": null,
        "type": null,
        "profileResModelId": null,
        "address": null,
        "quota": null,
        "used": null,
        "isDisabled": null,
        "isDeleted": null,
        "createdAt": null,
        "updatedAt": null
      };
      return profileResModelFromJson(jsonEncode(customresponse));
    }
  }
}
