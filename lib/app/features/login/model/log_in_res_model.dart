part of login;

LoginResModel loginResModelFromJson(String str) =>
    LoginResModel.fromJson(json.decode(str));

String loginResModelToJson(LoginResModel data) => json.encode(data.toJson());

class LoginResModel {
  LoginResModel({
    required this.token,
    required this.id,
  });

  final String? token;
  final String? id;

  factory LoginResModel.fromJson(Map<String, dynamic> json) => LoginResModel(
        token: json["token"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
      };
}
