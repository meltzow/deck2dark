import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todark/app/data/card.dart';

import 'label.dart';

part 'stack.g.dart';

@collection
@JsonSerializable(explicitToJson: true)
class Stack {
  final String title;
  final int? boardId;
  final int? deletedAt;
  @ignore
  final labels = IsarLinks<Label>();
  final cards = IsarLinks<Card>();
  final Id id;

  // final String? color;
  // final Bool? archived;
  // // final Array<String>? labels;
  // final String? acl;
  // final Int? shared;
  // final DateTime? deletedAt;
  // final DateTime? lastModified;

  Stack({required this.title, this.boardId, this.deletedAt, required this.id});

  factory Stack.fromJson(Map<String, dynamic> json) => _$StackFromJson(json);

  Map<String, dynamic> toJson() {
    final cardsJson = cards != null
        // map each review to a Review object
        ? cards
            .map((reviewData) => reviewData.toJson())
            .toList() // use an empty list as fallback value
        : [];

    return {
      'title': title,
      'id': id,
      'deletedAt': deletedAt,
      'cards': cardsJson
    };
  }
}
