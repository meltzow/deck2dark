import 'package:json_annotation/json_annotation.dart';
import 'package:todark/app/data/user.dart';

part 'assignment.g.dart';

@JsonSerializable()
class Assignment {
  late int cardId;
  late int id;
  late User participant;
  late int type;

  Assignment(this.cardId, this.id, this.participant, this.type);

  factory Assignment.fromJson(Map<String, dynamic> json) =>
      _$AssignmentFromJson(json);

  Map<String, dynamic> toJson() => _$AssignmentToJson(this);
}
