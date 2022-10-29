part of message_view;

abstract class MessageRepository {
  Future<dynamic> fetchData(String id);
}

class MessageRepo extends MessageRepository {
  Map<String, dynamic> customresponse = {
    "context": null,
    "id": null,
    "type": null,
    "messageResModelId": null,
    "accountId": null,
    "msgid": null,
    "from": null,
    "to": null,
    "cc": null,
    "bcc": null,
    "subject": null,
    "seen": null,
    "flagged": null,
    "isDeleted": null,
    "verifications": null,
    "retention": null,
    "retentionDate": null,
    "text": null,
    "html": null,
    "hasAttachments": null,
    "attachments": null,
    "size": null,
    "downloadUrl": null,
    "createdAt": null,
    "updatedAt": null
  };
  @override
  Future<MessageResModel> fetchData(String id) async {
    var token = await SharedService.loginDetails();

    Map<String, String> reqheaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${token!.token}"
    };
    http.Response response =
        await BaseClient().get(ApiPath.message + id, reqheaders);
    if (response.statusCode == 200) {
      return messageResModelFromJson(response.body);
    } else if (response.statusCode == 401) {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );

      return messageResModelFromJson(jsonEncode(customresponse));
    } else {
      Get.snackbar(
        "Session Expire",
        "Invalid JWT Token",
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return messageResModelFromJson(jsonEncode(customresponse));
    }
  }
}
