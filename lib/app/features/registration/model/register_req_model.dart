part of register;

RegisterReqModel registerReqModelFromJson(String str) =>
    RegisterReqModel.fromJson(json.decode(str));

String registerReqModelToJson(RegisterReqModel data) =>
    json.encode(data.toJson());

class RegisterReqModel {
  RegisterReqModel({
    required this.address,
    required this.password,
  });

  final String address;
  final String password;

  factory RegisterReqModel.fromJson(Map<String, dynamic> json) =>
      RegisterReqModel(
        address: json["address"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "password": password,
      };
}
