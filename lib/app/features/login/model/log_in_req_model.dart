part of login;

LoginReqModel loginReqModelFromJson(String str) =>
    LoginReqModel.fromJson(json.decode(str));

String loginReqModelToJson(LoginReqModel data) => json.encode(data.toJson());

class LoginReqModel {
  LoginReqModel({
    required this.address,
    required this.password,
  });

  final String address;
  final String password;

  factory LoginReqModel.fromJson(Map<String, dynamic> json) => LoginReqModel(
        address: json["address"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "password": password,
      };
}
