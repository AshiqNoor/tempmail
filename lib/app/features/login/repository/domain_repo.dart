part of login;

abstract class DomainRepository {
  Future<dynamic> fetchData();
}

class DomainRepo extends DomainRepository {
  @override
  Future<dynamic> fetchData() async {
    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
    };

    http.Response response = await BaseClient().get(ApiPath.domain, reqheaders);
    if (response.statusCode == 200) {
      return domainResModelFromJson(response.body);
    } else {
      Get.snackbar(
        "Domain Failed",
        "Something went wrong",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Map<String, dynamic> customresponse = {
        "context": null,
        "id": null,
        "type": null,
        "hydra:member": null,
        "hydra:totalItems": null
      };
      return domainResModelFromJson(jsonEncode(customresponse));
    }
  }
}
