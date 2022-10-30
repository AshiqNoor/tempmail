part of login;

DomainResModel domainResModelFromJson(String str) =>
    DomainResModel.fromJson(json.decode(str));

String domainResModelToJson(DomainResModel data) => json.encode(data.toJson());

class DomainResModel {
  DomainResModel({
    required this.context,
    required this.id,
    required this.type,
    required this.hydraMember,
    required this.hydraTotalItems,
  });

  final String? context;
  final String? id;
  final String? type;
  final List<HydraMember>? hydraMember;
  final int? hydraTotalItems;

  factory DomainResModel.fromJson(Map<String, dynamic> json) => DomainResModel(
        context: json["@context"],
        id: json["@id"],
        type: json["@type"],
        hydraMember: List<HydraMember>.from(
            json["hydra:member"].map((x) => HydraMember.fromJson(x))),
        hydraTotalItems: json["hydra:totalItems"],
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "hydra:member": List<dynamic>.from(hydraMember!.map((x) => x.toJson())),
        "hydra:totalItems": hydraTotalItems,
      };
}

class HydraMember {
  HydraMember({
    required this.id,
    required this.type,
    required this.hydraMemberId,
    required this.domain,
    required this.isActive,
    required this.isPrivate,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String type;
  final String hydraMemberId;
  final String domain;
  final bool isActive;
  final bool isPrivate;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory HydraMember.fromJson(Map<String, dynamic> json) => HydraMember(
        id: json["@id"],
        type: json["@type"],
        hydraMemberId: json["id"],
        domain: json["domain"],
        isActive: json["isActive"],
        isPrivate: json["isPrivate"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type,
        "id": hydraMemberId,
        "domain": domain,
        "isActive": isActive,
        "isPrivate": isPrivate,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
