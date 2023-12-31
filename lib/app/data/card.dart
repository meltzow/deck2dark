import 'package:json_annotation/json_annotation.dart';
import 'package:deck2dark/app/data/assignment.dart';
import 'package:deck2dark/app/data/attachment.dart';
import 'package:deck2dark/app/data/label.dart';
import 'package:deck2dark/app/data/schema.dart';
import 'package:deck2dark/app/data/stack.dart';
import 'package:deck2dark/app/data/user.dart';

part 'card.g.dart';

@JsonSerializable(explicitToJson: true)
class Card {
  String? ETag;
  bool? archived;
  List<Assignment>? assignedUsers;
  int? attachmentCount;
  List<Attachment>? attachments;
  int? commentsCount;
  int? commentsUnread;
  int? createdAt;
  int? deletedAt;
  final String description;
  String? duedate;
  final int? id;
  List<Label>? labels;
  String? lastEditor;
  int? lastModified;
  int? order;
  int? overdue;
  late User? owner;
  int? stackId;
  final String title;
  String type;

  Card(
      {required this.title,
      this.description = '',
      required this.id,
      this.type = 'text',
      this.owner,
      this.order,
      this.stackId});

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);

  Todos toTodo(Tasks task, Stack stack, Settings settings) {
    var t = Todos(name: title, description: description, id: id!)
      ..task.value = task;
    task.todos.add(t);
    t.done = settings.doneStates!.contains(stack.title) ? true : false;
    return t;
  }
}
