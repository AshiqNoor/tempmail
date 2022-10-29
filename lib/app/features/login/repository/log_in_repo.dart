part of login;

abstract class SignInRepository {
  Future<LoginResModel> fetchData(LoginReqModel model);
}

class SignInRepo extends SignInRepository {
  @override
  Future<LoginResModel> fetchData(LoginReqModel model) async {
    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
    };

    http.Response response = await BaseClient()
        .post(ApiPath.login, reqheaders, loginReqModelToJson(model));
    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(loginResModelFromJson(response.body));
      return loginResModelFromJson(response.body);
    } else if (response.statusCode == 401) {
      Get.snackbar(
        "Login Failed",
        "Invalid credentials.",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {"token": null, "id": null};
      return loginResModelFromJson(jsonEncode(customresponse));
    } else {
      Get.snackbar(
        "Login Failed",
        "Something went wrong",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {"token": null, "id": null};
      return loginResModelFromJson(jsonEncode(customresponse));
    }
  }
}
