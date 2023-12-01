// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardCollection on Isar {
  IsarCollection<Card> get cards => this.collection();
}

const CardSchema = CollectionSchema(
  name: r'Card',
  id: 2706062385186124215,
  properties: {
    r'ETag': PropertySchema(
      id: 0,
      name: r'ETag',
      type: IsarType.string,
    ),
    r'archived': PropertySchema(
      id: 1,
      name: r'archived',
      type: IsarType.bool,
    ),
    r'attachmentCount': PropertySchema(
      id: 2,
      name: r'attachmentCount',
      type: IsarType.long,
    ),
    r'commentsCount': PropertySchema(
      id: 3,
      name: r'commentsCount',
      type: IsarType.long,
    ),
    r'commentsUnread': PropertySchema(
      id: 4,
      name: r'commentsUnread',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 5,
      name: r'createdAt',
      type: IsarType.long,
    ),
    r'deletedAt': PropertySchema(
      id: 6,
      name: r'deletedAt',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 7,
      name: r'description',
      type: IsarType.string,
    ),
    r'duedate': PropertySchema(
      id: 8,
      name: r'duedate',
      type: IsarType.string,
    ),
    r'lastEditor': PropertySchema(
      id: 9,
      name: r'lastEditor',
      type: IsarType.string,
    ),
    r'lastModified': PropertySchema(
      id: 10,
      name: r'lastModified',
      type: IsarType.long,
    ),
    r'order': PropertySchema(
      id: 11,
      name: r'order',
      type: IsarType.long,
    ),
    r'overdue': PropertySchema(
      id: 12,
      name: r'overdue',
      type: IsarType.long,
    ),
    r'stackId': PropertySchema(
      id: 13,
      name: r'stackId',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 14,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 15,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _cardEstimateSize,
  serialize: _cardSerialize,
  deserialize: _cardDeserialize,
  deserializeProp: _cardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardGetId,
  getLinks: _cardGetLinks,
  attach: _cardAttach,
  version: '3.1.0+1',
);

int _cardEstimateSize(
  Card object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ETag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.duedate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastEditor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _cardSerialize(
  Card object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.ETag);
  writer.writeBool(offsets[1], object.archived);
  writer.writeLong(offsets[2], object.attachmentCount);
  writer.writeLong(offsets[3], object.commentsCount);
  writer.writeLong(offsets[4], object.commentsUnread);
  writer.writeLong(offsets[5], object.createdAt);
  writer.writeLong(offsets[6], object.deletedAt);
  writer.writeString(offsets[7], object.description);
  writer.writeString(offsets[8], object.duedate);
  writer.writeString(offsets[9], object.lastEditor);
  writer.writeLong(offsets[10], object.lastModified);
  writer.writeLong(offsets[11], object.order);
  writer.writeLong(offsets[12], object.overdue);
  writer.writeLong(offsets[13], object.stackId);
  writer.writeString(offsets[14], object.title);
  writer.writeString(offsets[15], object.type);
}

Card _cardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Card(
    description: reader.readStringOrNull(offsets[7]),
    id: id,
    order: reader.readLongOrNull(offsets[11]),
    stackId: reader.readLongOrNull(offsets[13]),
    title: reader.readString(offsets[14]),
    type: reader.readStringOrNull(offsets[15]) ?? 'text',
  );
  object.ETag = reader.readStringOrNull(offsets[0]);
  object.archived = reader.readBoolOrNull(offsets[1]);
  object.attachmentCount = reader.readLongOrNull(offsets[2]);
  object.commentsCount = reader.readLongOrNull(offsets[3]);
  object.commentsUnread = reader.readLongOrNull(offsets[4]);
  object.createdAt = reader.readLongOrNull(offsets[5]);
  object.deletedAt = reader.readLongOrNull(offsets[6]);
  object.duedate = reader.readStringOrNull(offsets[8]);
  object.lastEditor = reader.readStringOrNull(offsets[9]);
  object.lastModified = reader.readLongOrNull(offsets[10]);
  object.overdue = reader.readLongOrNull(offsets[12]);
  return object;
}

P _cardDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset) ?? 'text') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardGetId(Card object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardGetLinks(Card object) {
  return [];
}

void _cardAttach(IsarCollection<dynamic> col, Id id, Card object) {}

extension CardQueryWhereSort on QueryBuilder<Card, Card, QWhere> {
  QueryBuilder<Card, Card, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardQueryWhere on QueryBuilder<Card, Card, QWhereClause> {
  QueryBuilder<Card, Card, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CardQueryFilter on QueryBuilder<Card, Card, QFilterCondition> {
  QueryBuilder<Card, Card, QAfterFilterCondition> eTagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ETag',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ETag',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ETag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ETag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ETag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ETag',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> eTagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ETag',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> archivedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'archived',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> archivedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'archived',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> archivedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'archived',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attachmentCount',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attachmentCount',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachmentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachmentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachmentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> attachmentCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachmentCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commentsCount',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commentsCount',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentsCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commentsUnread',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commentsUnread',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentsUnread',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentsUnread',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentsUnread',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> commentsUnreadBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentsUnread',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> createdAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deletedAt',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deletedAt',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> deletedAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duedate',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duedate',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duedate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'duedate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'duedate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duedate',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> duedateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'duedate',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastEditor',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastEditor',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastEditor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastEditor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastEditor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastEditor',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastEditorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastEditor',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModified',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModified',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModified',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastModified',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastModified',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> lastModifiedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastModified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> orderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'overdue',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'overdue',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overdue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overdue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overdue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> overdueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overdue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stackId',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stackId',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stackId',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stackId',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stackId',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> stackIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stackId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension CardQueryObject on QueryBuilder<Card, Card, QFilterCondition> {}

extension CardQueryLinks on QueryBuilder<Card, Card, QFilterCondition> {}

extension CardQuerySortBy on QueryBuilder<Card, Card, QSortBy> {
  QueryBuilder<Card, Card, QAfterSortBy> sortByETag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ETag', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByETagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ETag', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByAttachmentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentCount', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByAttachmentCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentCount', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCommentsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCommentsUnread() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUnread', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCommentsUnreadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUnread', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDuedate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duedate', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByDuedateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duedate', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByLastEditor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEditor', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByLastEditorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEditor', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByLastModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModified', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByLastModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModified', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByOverdue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overdue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByOverdueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overdue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByStackId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stackId', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByStackIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stackId', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CardQuerySortThenBy on QueryBuilder<Card, Card, QSortThenBy> {
  QueryBuilder<Card, Card, QAfterSortBy> thenByETag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ETag', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByETagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ETag', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'archived', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByAttachmentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentCount', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByAttachmentCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attachmentCount', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCommentsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCommentsUnread() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUnread', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCommentsUnreadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUnread', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDuedate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duedate', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByDuedateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duedate', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByLastEditor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEditor', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByLastEditorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastEditor', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByLastModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModified', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByLastModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModified', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByOverdue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overdue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByOverdueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overdue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByStackId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stackId', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByStackIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stackId', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension CardQueryWhereDistinct on QueryBuilder<Card, Card, QDistinct> {
  QueryBuilder<Card, Card, QDistinct> distinctByETag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ETag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'archived');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByAttachmentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachmentCount');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentsCount');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCommentsUnread() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentsUnread');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedAt');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByDuedate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duedate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByLastEditor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastEditor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByLastModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModified');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'order');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByOverdue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overdue');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByStackId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stackId');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension CardQueryProperty on QueryBuilder<Card, Card, QQueryProperty> {
  QueryBuilder<Card, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Card, String?, QQueryOperations> ETagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ETag');
    });
  }

  QueryBuilder<Card, bool?, QQueryOperations> archivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'archived');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> attachmentCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachmentCount');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> commentsCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentsCount');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> commentsUnreadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentsUnread');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedAt');
    });
  }

  QueryBuilder<Card, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Card, String?, QQueryOperations> duedateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duedate');
    });
  }

  QueryBuilder<Card, String?, QQueryOperations> lastEditorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastEditor');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> lastModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModified');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'order');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> overdueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overdue');
    });
  }

  QueryBuilder<Card, int?, QQueryOperations> stackIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stackId');
    });
  }

  QueryBuilder<Card, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Card, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      title: json['title'] as String,
      description: json['description'] as String?,
      id: json['id'] as int,
      type: json['type'] as String? ?? 'text',
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      order: json['order'] as int?,
      stackId: json['stackId'] as int?,
    )
      ..ETag = json['ETag'] as String?
      ..archived = json['archived'] as bool?
      ..assignedUsers = (json['assignedUsers'] as List<dynamic>?)
          ?.map((e) => Assignment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..attachmentCount = json['attachmentCount'] as int?
      ..attachments = (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..commentsCount = json['commentsCount'] as int?
      ..commentsUnread = json['commentsUnread'] as int?
      ..createdAt = json['createdAt'] as int?
      ..deletedAt = json['deletedAt'] as int?
      ..duedate = json['duedate'] as String?
      ..labels = (json['labels'] as List<dynamic>?)
          ?.map((e) => Label.fromJson(e as Map<String, dynamic>))
          .toList()
      ..lastEditor = json['lastEditor'] as String?
      ..lastModified = json['lastModified'] as int?
      ..overdue = json['overdue'] as int?;

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'ETag': instance.ETag,
      'archived': instance.archived,
      'assignedUsers': instance.assignedUsers?.map((e) => e.toJson()).toList(),
      'attachmentCount': instance.attachmentCount,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'commentsCount': instance.commentsCount,
      'commentsUnread': instance.commentsUnread,
      'createdAt': instance.createdAt,
      'deletedAt': instance.deletedAt,
      'description': instance.description,
      'duedate': instance.duedate,
      'id': instance.id,
      'labels': instance.labels?.map((e) => e.toJson()).toList(),
      'lastEditor': instance.lastEditor,
      'lastModified': instance.lastModified,
      'order': instance.order,
      'overdue': instance.overdue,
      'owner': instance.owner?.toJson(),
      'stackId': instance.stackId,
      'title': instance.title,
      'type': instance.type,
    };
