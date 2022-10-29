part of message_view;

MessageResModel messageResModelFromJson(String str) =>
    MessageResModel.fromJson(json.decode(str));

String messageResModelToJson(MessageResModel data) =>
    json.encode(data.toJson());

class MessageResModel {
  MessageResModel({
    required this.context,
    required this.id,
    required this.type,
    required this.messageResModelId,
    required this.accountId,
    required this.msgid,
    required this.from,
    required this.to,
    required this.cc,
    required this.bcc,
    required this.subject,
    required this.seen,
    required this.flagged,
    required this.isDeleted,
    required this.verifications,
    required this.retention,
    required this.retentionDate,
    required this.text,
    required this.html,
    required this.hasAttachments,
    required this.attachments,
    required this.size,
    required this.downloadUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  final String? context;
  final String? id;
  final String? type;
  final String? messageResModelId;
  final String? accountId;
  final String? msgid;
  final From? from;
  final List<From>? to;
  final List<dynamic>? cc;
  final List<dynamic>? bcc;
  final String? subject;
  final bool? seen;
  final bool? flagged;
  final bool? isDeleted;
  final List<dynamic>? verifications;
  final bool? retention;
  final DateTime? retentionDate;
  final String? text;
  final List<String>? html;
  final bool hasAttachments;
  final List<dynamic>? attachments;
  final int? size;
  final String? downloadUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory MessageResModel.fromJson(Map<String, dynamic> json) =>
      MessageResModel(
        context: json["@context"],
        id: json["@id"],
        type: json["@type"],
        messageResModelId: json["id"],
        accountId: json["accountId"],
        msgid: json["msgid"],
        from: From.fromJson(json["from"]),
        to: List<From>.from(json["to"].map((x) => From.fromJson(x))),
        cc: List<dynamic>.from(json["cc"].map((x) => x)),
        bcc: List<dynamic>.from(json["bcc"].map((x) => x)),
        subject: json["subject"],
        seen: json["seen"],
        flagged: json["flagged"],
        isDeleted: json["isDeleted"],
        verifications: List<dynamic>.from(json["verifications"].map((x) => x)),
        retention: json["retention"],
        retentionDate: DateTime.parse(json["retentionDate"]),
        text: json["text"],
        html: List<String>.from(json["html"].map((x) => x)),
        hasAttachments: json["hasAttachments"],
        attachments: List<dynamic>.from(json["attachments"].map((x) => x)),
        size: json["size"],
        downloadUrl: json["downloadUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "id": messageResModelId,
        "accountId": accountId,
        "msgid": msgid,
        "from": from!.toJson(),
        "to": List<dynamic>.from(to!.map((x) => x.toJson())),
        "cc": List<dynamic>.from(cc!.map((x) => x)),
        "bcc": List<dynamic>.from(bcc!.map((x) => x)),
        "subject": subject,
        "seen": seen,
        "flagged": flagged,
        "isDeleted": isDeleted,
        "verifications": List<dynamic>.from(verifications!.map((x) => x)),
        "retention": retention,
        "retentionDate": retentionDate!.toIso8601String(),
        "text": text,
        "html": List<dynamic>.from(html!.map((x) => x)),
        "hasAttachments": hasAttachments,
        "attachments": List<dynamic>.from(attachments!.map((x) => x)),
        "size": size,
        "downloadUrl": downloadUrl,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

class From {
  From({
    required this.address,
    required this.name,
  });

  final String address;
  final String name;

  factory From.fromJson(Map<String, dynamic> json) => From(
        address: json["address"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "name": name,
      };
}
