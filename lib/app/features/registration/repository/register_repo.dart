part of register;

abstract class RegisterRepository {
  Future<RegisterResModel> fetchData(RegisterReqModel model);
}

class RegisterRepo extends RegisterRepository {
  @override
  Future<RegisterResModel> fetchData(RegisterReqModel model) async {
    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
    };
    http.Response response = await BaseClient()
        .post(ApiPath.register, reqheaders, registerReqModelToJson(model));

    if (response.statusCode == 201) {
      Map<String, dynamic> customresponse = {"message": "Account Created!"};
      return registerResModelFromJson(jsonEncode(customresponse));
    } else if (response.statusCode == 422) {
      Map<String, dynamic> customresponse = {
        "message": null,
      };
      Get.snackbar(
        "Registration Failed",
        "This address is already used",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return registerResModelFromJson(jsonEncode(customresponse));
    } else {
      Map<String, dynamic> customresponse = {
        "message": null,
      };
      Get.snackbar(
        "Registration Failed",
        "Something went wrong",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return registerResModelFromJson(jsonEncode(customresponse));
    }
  }
}
