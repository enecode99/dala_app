// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finnish_construction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FinnishConstructionRecord> _$finnishConstructionRecordSerializer =
    new _$FinnishConstructionRecordSerializer();

class _$FinnishConstructionRecordSerializer
    implements StructuredSerializer<FinnishConstructionRecord> {
  @override
  final Iterable<Type> types = const [
    FinnishConstructionRecord,
    _$FinnishConstructionRecord
  ];
  @override
  final String wireName = 'FinnishConstructionRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FinnishConstructionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.estimatedCost;
    if (value != null) {
      result
        ..add('estimated_cost')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.remainCost;
    if (value != null) {
      result
        ..add('remain_cost')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.constructionLocation;
    if (value != null) {
      result
        ..add('construction_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FinnishConstructionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FinnishConstructionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'estimated_cost':
          result.estimatedCost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remain_cost':
          result.remainCost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'construction_location':
          result.constructionLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FinnishConstructionRecord extends FinnishConstructionRecord {
  @override
  final int estimatedCost;
  @override
  final int remainCost;
  @override
  final String constructionLocation;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$FinnishConstructionRecord(
          [void Function(FinnishConstructionRecordBuilder) updates]) =>
      (new FinnishConstructionRecordBuilder()..update(updates)).build();

  _$FinnishConstructionRecord._(
      {this.estimatedCost,
      this.remainCost,
      this.constructionLocation,
      this.user,
      this.reference})
      : super._();

  @override
  FinnishConstructionRecord rebuild(
          void Function(FinnishConstructionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinnishConstructionRecordBuilder toBuilder() =>
      new FinnishConstructionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinnishConstructionRecord &&
        estimatedCost == other.estimatedCost &&
        remainCost == other.remainCost &&
        constructionLocation == other.constructionLocation &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, estimatedCost.hashCode), remainCost.hashCode),
                constructionLocation.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FinnishConstructionRecord')
          ..add('estimatedCost', estimatedCost)
          ..add('remainCost', remainCost)
          ..add('constructionLocation', constructionLocation)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class FinnishConstructionRecordBuilder
    implements
        Builder<FinnishConstructionRecord, FinnishConstructionRecordBuilder> {
  _$FinnishConstructionRecord _$v;

  int _estimatedCost;
  int get estimatedCost => _$this._estimatedCost;
  set estimatedCost(int estimatedCost) => _$this._estimatedCost = estimatedCost;

  int _remainCost;
  int get remainCost => _$this._remainCost;
  set remainCost(int remainCost) => _$this._remainCost = remainCost;

  String _constructionLocation;
  String get constructionLocation => _$this._constructionLocation;
  set constructionLocation(String constructionLocation) =>
      _$this._constructionLocation = constructionLocation;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FinnishConstructionRecordBuilder() {
    FinnishConstructionRecord._initializeBuilder(this);
  }

  FinnishConstructionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _estimatedCost = $v.estimatedCost;
      _remainCost = $v.remainCost;
      _constructionLocation = $v.constructionLocation;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinnishConstructionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinnishConstructionRecord;
  }

  @override
  void update(void Function(FinnishConstructionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FinnishConstructionRecord build() {
    final _$result = _$v ??
        new _$FinnishConstructionRecord._(
            estimatedCost: estimatedCost,
            remainCost: remainCost,
            constructionLocation: constructionLocation,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
