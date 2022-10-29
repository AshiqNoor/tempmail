part of message_view;

SeenResModel seenResModelFromJson(String str) =>
    SeenResModel.fromJson(json.decode(str));

String seenResModelToJson(SeenResModel data) => json.encode(data.toJson());

class SeenResModel {
  SeenResModel({
    required this.context,
    required this.id,
    required this.type,
    required this.seen,
  });

  final String? context;
  final String? id;
  final String? type;
  final bool? seen;

  factory SeenResModel.fromJson(Map<String, dynamic> json) => SeenResModel(
        context: json["@context"],
        id: json["@id"],
        type: json["@type"],
        seen: json["seen"],
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "seen": seen,
      };
}
