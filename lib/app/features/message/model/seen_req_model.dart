part of message_view;

SeenReqModel seenReqModelFromJson(String str) =>
    SeenReqModel.fromJson(json.decode(str));

String seenReqModelToJson(SeenReqModel data) => json.encode(data.toJson());

class SeenReqModel {
  SeenReqModel({
    required this.seen,
  });

  final bool seen;

  factory SeenReqModel.fromJson(Map<String, dynamic> json) => SeenReqModel(
        seen: json["seen"],
      );

  Map<String, dynamic> toJson() => {
        "seen": seen,
      };
}
