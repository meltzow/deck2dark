import 'package:todark/app/data/label.dart';
import 'package:todark/app/data/schema.dart';

class Board {
  final String title;
  final String? color;
  final bool archived;
  final int id;
  final String? acl;
  final int? shared;
  final DateTime? deletedAt;
  final DateTime? lastModified;
  List<Label>? labels;

  Board(
      {required this.title,
      this.color,
      this.archived = false,
      this.acl,
      this.shared,
      this.deletedAt,
      this.lastModified,
      required this.id,
      this.labels});

  factory Board.fromJson(Map<String, dynamic> json) {
    var labels = json.containsKey('labels') && json['labels'] != null
        ? (json['labels'] as List).map((e) => Label.fromJson(e)).toList()
        : null;
    return Board(
      title: json['title'] as String,
      id: json['id'] as int,
      color: json['color'] as String?,
      // archived: json['archived'] as Bool?,
      labels: labels,
      // acl: json['acl'] as String[]?,

      // permissions?: BoardPermissions;
      // users?: Array<User>;
      // shared: json['shared'] as Int?,
      // deletedAt:  json['deletedAt'] as DateTime?,
      // lastModified: json['lastModified'] as DateTime?,
      // settings:json['settings'] as BoardSettings;
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'id': id,
        'color': color,
        'labels': labels?.map((e) => e.toJson()).toList()
      };

  Tasks toTask() => Tasks(title: title, taskColor: 222, archive: archived);
}
