import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todark/app/data/account.dart';
import 'package:todark/app/data/assignment.dart';
import 'package:todark/app/data/attachment.dart';
import 'package:todark/app/data/label.dart';
import 'package:todark/app/data/schema.dart';
import 'package:todark/app/data/stack.dart';
import 'package:todark/app/data/user.dart';

part 'card.g.dart';

@collection
@JsonSerializable(explicitToJson: true)
class Card {
  String? ETag;
  bool? archived;
  @ignore
  List<Assignment>? assignedUsers;
  int? attachmentCount;
  @ignore
  List<Attachment>? attachments;
  int? commentsCount;
  int? commentsUnread;
  int? createdAt;
  int? deletedAt;
  final String? description;
  String? duedate;
  final Id id;
  @ignore
  List<Label>? labels;
  String? lastEditor;
  int? lastModified;
  int? order;
  int? overdue;
  @ignore
  late User? owner;
  int? stackId;
  final String title;
  String type;

  Card(
      {required this.title,
      this.description,
      required this.id,
      this.type = 'text',
      this.owner,
      this.order,
      this.stackId});

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);

  Todos toTodo(Tasks task, Stack stack, Account account) {
    var t = Todos(name: title, description: description!, id: id!)
      ..task.value = task;
    task.todos.add(t);
    t.done = account.doneStates!.contains(stack.title) ? true : false;
    return t;
  }
}
