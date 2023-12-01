// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAccountCollection on Isar {
  IsarCollection<Account> get accounts => this.collection();
}

const AccountSchema = CollectionSchema(
  name: r'Account',
  id: -6646797162501847804,
  properties: {
    r'authData': PropertySchema(
      id: 0,
      name: r'authData',
      type: IsarType.string,
    ),
    r'doingStates': PropertySchema(
      id: 1,
      name: r'doingStates',
      type: IsarType.stringList,
    ),
    r'doneStates': PropertySchema(
      id: 2,
      name: r'doneStates',
      type: IsarType.stringList,
    ),
    r'isAuthenticated': PropertySchema(
      id: 3,
      name: r'isAuthenticated',
      type: IsarType.bool,
    ),
    r'password': PropertySchema(
      id: 4,
      name: r'password',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 5,
      name: r'url',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 6,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _accountEstimateSize,
  serialize: _accountSerialize,
  deserialize: _accountDeserialize,
  deserializeProp: _accountDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _accountGetId,
  getLinks: _accountGetLinks,
  attach: _accountAttach,
  version: '3.1.0+1',
);

int _accountEstimateSize(
  Account object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.authData.length * 3;
  {
    final list = object.doingStates;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.doneStates;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.url.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _accountSerialize(
  Account object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.authData);
  writer.writeStringList(offsets[1], object.doingStates);
  writer.writeStringList(offsets[2], object.doneStates);
  writer.writeBool(offsets[3], object.isAuthenticated);
  writer.writeString(offsets[4], object.password);
  writer.writeString(offsets[5], object.url);
  writer.writeString(offsets[6], object.username);
}

Account _accountDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Account(
    authData: reader.readString(offsets[0]),
    isAuthenticated: reader.readBool(offsets[3]),
    password: reader.readString(offsets[4]),
    url: reader.readString(offsets[5]),
    username: reader.readString(offsets[6]),
  );
  object.doingStates = reader.readStringList(offsets[1]);
  object.doneStates = reader.readStringList(offsets[2]);
  object.id = id;
  return object;
}

P _accountDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _accountGetId(Account object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _accountGetLinks(Account object) {
  return [];
}

void _accountAttach(IsarCollection<dynamic> col, Id id, Account object) {
  object.id = id;
}

extension AccountQueryWhereSort on QueryBuilder<Account, Account, QWhere> {
  QueryBuilder<Account, Account, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AccountQueryWhere on QueryBuilder<Account, Account, QWhereClause> {
  QueryBuilder<Account, Account, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Account, Account, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Account, Account, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Account, Account, QAfterWhereClause> idBetween(
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

extension AccountQueryFilter
    on QueryBuilder<Account, Account, QFilterCondition> {
  QueryBuilder<Account, Account, QAfterFilterCondition> authDataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authData',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> authDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authData',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doingStatesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doingStates',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doingStatesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doingStates',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doingStates',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doingStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doingStates',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doingStates',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doingStates',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doingStatesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doingStatesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doingStates',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doneStates',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doneStates',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doneStates',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doneStates',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doneStates',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doneStates',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doneStates',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition>
      doneStatesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> doneStatesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doneStates',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Account, Account, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Account, Account, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Account, Account, QAfterFilterCondition> isAuthenticatedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAuthenticated',
        value: value,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<Account, Account, QAfterFilterCondition> usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension AccountQueryObject
    on QueryBuilder<Account, Account, QFilterCondition> {}

extension AccountQueryLinks
    on QueryBuilder<Account, Account, QFilterCondition> {}

extension AccountQuerySortBy on QueryBuilder<Account, Account, QSortBy> {
  QueryBuilder<Account, Account, QAfterSortBy> sortByAuthData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authData', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByAuthDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authData', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByIsAuthenticated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAuthenticated', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByIsAuthenticatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAuthenticated', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AccountQuerySortThenBy
    on QueryBuilder<Account, Account, QSortThenBy> {
  QueryBuilder<Account, Account, QAfterSortBy> thenByAuthData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authData', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByAuthDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authData', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByIsAuthenticated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAuthenticated', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByIsAuthenticatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAuthenticated', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<Account, Account, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AccountQueryWhereDistinct
    on QueryBuilder<Account, Account, QDistinct> {
  QueryBuilder<Account, Account, QDistinct> distinctByAuthData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authData', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByDoingStates() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doingStates');
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByDoneStates() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doneStates');
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByIsAuthenticated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAuthenticated');
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Account, Account, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension AccountQueryProperty
    on QueryBuilder<Account, Account, QQueryProperty> {
  QueryBuilder<Account, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Account, String, QQueryOperations> authDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authData');
    });
  }

  QueryBuilder<Account, List<String>?, QQueryOperations> doingStatesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doingStates');
    });
  }

  QueryBuilder<Account, List<String>?, QQueryOperations> doneStatesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doneStates');
    });
  }

  QueryBuilder<Account, bool, QQueryOperations> isAuthenticatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAuthenticated');
    });
  }

  QueryBuilder<Account, String, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<Account, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<Account, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      username: json['username'] as String,
      password: json['password'] as String,
      authData: json['authData'] as String,
      url: json['url'] as String,
      isAuthenticated: json['isAuthenticated'] as bool,
    )
      ..id = json['id'] as int
      ..doingStates = (json['doingStates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..doneStates = (json['doneStates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'authData': instance.authData,
      'url': instance.url,
      'isAuthenticated': instance.isAuthenticated,
      'doingStates': instance.doingStates,
      'doneStates': instance.doneStates,
    };
