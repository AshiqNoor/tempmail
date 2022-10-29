part of home;

ProfileResModel profileResModelFromJson(String str) =>
    ProfileResModel.fromJson(json.decode(str));

String profileResModelToJson(ProfileResModel data) =>
    json.encode(data.toJson());

class ProfileResModel {
  ProfileResModel({
    required this.context,
    required this.id,
    required this.type,
    required this.profileResModelId,
    required this.address,
    required this.quota,
    required this.used,
    required this.isDisabled,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  final String? context;
  final String? id;
  final String? type;
  final String? profileResModelId;
  final String? address;
  final int? quota;
  final int? used;
  final bool? isDisabled;
  final bool? isDeleted;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory ProfileResModel.fromJson(Map<String, dynamic> json) =>
      ProfileResModel(
        context: json["@context"],
        id: json["@id"],
        type: json["@type"],
        profileResModelId: json["id"],
        address: json["address"],
        quota: json["quota"],
        used: json["used"],
        isDisabled: json["isDisabled"],
        isDeleted: json["isDeleted"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "id": profileResModelId,
        "address": address,
        "quota": quota,
        "used": used,
        "isDisabled": isDisabled,
        "isDeleted": isDeleted,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
