import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'label.g.dart';

@collection
@JsonSerializable()
class Label {
  String title;
  String? color;
  int? boardId;
  int? lastModified;
  Id id;
  String? ETAG;
  int? cardId;

  Label(
      {required this.title,
      this.color,
      required this.id,
      this.boardId,
      this.lastModified,
      this.ETAG,
      this.cardId});

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      title: json['title'] as String,
      color: json['color'] as String,
      boardId: json['boardId'] as int?,
      lastModified: json['lastModified'] as int,
      id: json['id'] as int,
      ETAG: json['ETAG'] as String?,
      cardId: json['cardId'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'color': color,
        'boardId': boardId,
        'lastModified': lastModified,
        'id': id,
        'String': ETAG,
        'cardId': cardId
      };
}
