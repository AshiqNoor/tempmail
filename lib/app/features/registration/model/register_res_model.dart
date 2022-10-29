part of register;

RegisterResModel registerResModelFromJson(String str) =>
    RegisterResModel.fromJson(json.decode(str));

String registerResModelToJson(RegisterResModel data) =>
    json.encode(data.toJson());

class RegisterResModel {
  RegisterResModel({
    required this.message,
  });

  final String? message;

  factory RegisterResModel.fromJson(Map<String, dynamic> json) =>
      RegisterResModel(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
