// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_request_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeRequestRecord> _$homeRequestRecordSerializer =
    new _$HomeRequestRecordSerializer();

class _$HomeRequestRecordSerializer
    implements StructuredSerializer<HomeRequestRecord> {
  @override
  final Iterable<Type> types = const [HomeRequestRecord, _$HomeRequestRecord];
  @override
  final String wireName = 'HomeRequestRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HomeRequestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.rooms;
    if (value != null) {
      result
        ..add('rooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moreDetails;
    if (value != null) {
      result
        ..add('more_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestUser;
    if (value != null) {
      result
        ..add('request_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.budgetAmount;
    if (value != null) {
      result
        ..add('budget_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  HomeRequestRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeRequestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'rooms':
          result.rooms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'more_details':
          result.moreDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request_user':
          result.requestUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'budget_amount':
          result.budgetAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$HomeRequestRecord extends HomeRequestRecord {
  @override
  final String rooms;
  @override
  final String moreDetails;
  @override
  final DocumentReference<Object> requestUser;
  @override
  final String budgetAmount;
  @override
  final DateTime time;
  @override
  final DocumentReference<Object> reference;

  factory _$HomeRequestRecord(
          [void Function(HomeRequestRecordBuilder) updates]) =>
      (new HomeRequestRecordBuilder()..update(updates)).build();

  _$HomeRequestRecord._(
      {this.rooms,
      this.moreDetails,
      this.requestUser,
      this.budgetAmount,
      this.time,
      this.reference})
      : super._();

  @override
  HomeRequestRecord rebuild(void Function(HomeRequestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeRequestRecordBuilder toBuilder() =>
      new HomeRequestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeRequestRecord &&
        rooms == other.rooms &&
        moreDetails == other.moreDetails &&
        requestUser == other.requestUser &&
        budgetAmount == other.budgetAmount &&
        time == other.time &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, rooms.hashCode), moreDetails.hashCode),
                    requestUser.hashCode),
                budgetAmount.hashCode),
            time.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeRequestRecord')
          ..add('rooms', rooms)
          ..add('moreDetails', moreDetails)
          ..add('requestUser', requestUser)
          ..add('budgetAmount', budgetAmount)
          ..add('time', time)
          ..add('reference', reference))
        .toString();
  }
}

class HomeRequestRecordBuilder
    implements Builder<HomeRequestRecord, HomeRequestRecordBuilder> {
  _$HomeRequestRecord _$v;

  String _rooms;
  String get rooms => _$this._rooms;
  set rooms(String rooms) => _$this._rooms = rooms;

  String _moreDetails;
  String get moreDetails => _$this._moreDetails;
  set moreDetails(String moreDetails) => _$this._moreDetails = moreDetails;

  DocumentReference<Object> _requestUser;
  DocumentReference<Object> get requestUser => _$this._requestUser;
  set requestUser(DocumentReference<Object> requestUser) =>
      _$this._requestUser = requestUser;

  String _budgetAmount;
  String get budgetAmount => _$this._budgetAmount;
  set budgetAmount(String budgetAmount) => _$this._budgetAmount = budgetAmount;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HomeRequestRecordBuilder() {
    HomeRequestRecord._initializeBuilder(this);
  }

  HomeRequestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rooms = $v.rooms;
      _moreDetails = $v.moreDetails;
      _requestUser = $v.requestUser;
      _budgetAmount = $v.budgetAmount;
      _time = $v.time;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeRequestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeRequestRecord;
  }

  @override
  void update(void Function(HomeRequestRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeRequestRecord build() {
    final _$result = _$v ??
        new _$HomeRequestRecord._(
            rooms: rooms,
            moreDetails: moreDetails,
            requestUser: requestUser,
            budgetAmount: budgetAmount,
            time: time,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
