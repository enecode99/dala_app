// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mortgage_request_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MortgageRequestRecord> _$mortgageRequestRecordSerializer =
    new _$MortgageRequestRecordSerializer();

class _$MortgageRequestRecordSerializer
    implements StructuredSerializer<MortgageRequestRecord> {
  @override
  final Iterable<Type> types = const [
    MortgageRequestRecord,
    _$MortgageRequestRecord
  ];
  @override
  final String wireName = 'MortgageRequestRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MortgageRequestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.mortgageType;
    if (value != null) {
      result
        ..add('mortgage_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employmentStatus;
    if (value != null) {
      result
        ..add('employment_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.monthlyIncome;
    if (value != null) {
      result
        ..add('monthly_income')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.relationshipStatus;
    if (value != null) {
      result
        ..add('relationship_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.homeRent;
    if (value != null) {
      result
        ..add('home_rent')
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
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.interestReq;
    if (value != null) {
      result
        ..add('interest_req')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MortgageRequestRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MortgageRequestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mortgage_type':
          result.mortgageType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'employment_status':
          result.employmentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'monthly_income':
          result.monthlyIncome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'relationship_status':
          result.relationshipStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'home_rent':
          result.homeRent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request_user':
          result.requestUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'interest_req':
          result.interestReq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$MortgageRequestRecord extends MortgageRequestRecord {
  @override
  final String mortgageType;
  @override
  final String employmentStatus;
  @override
  final String monthlyIncome;
  @override
  final String relationshipStatus;
  @override
  final String homeRent;
  @override
  final DocumentReference<Object> requestUser;
  @override
  final DateTime time;
  @override
  final bool interestReq;
  @override
  final DocumentReference<Object> reference;

  factory _$MortgageRequestRecord(
          [void Function(MortgageRequestRecordBuilder) updates]) =>
      (new MortgageRequestRecordBuilder()..update(updates)).build();

  _$MortgageRequestRecord._(
      {this.mortgageType,
      this.employmentStatus,
      this.monthlyIncome,
      this.relationshipStatus,
      this.homeRent,
      this.requestUser,
      this.time,
      this.interestReq,
      this.reference})
      : super._();

  @override
  MortgageRequestRecord rebuild(
          void Function(MortgageRequestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MortgageRequestRecordBuilder toBuilder() =>
      new MortgageRequestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MortgageRequestRecord &&
        mortgageType == other.mortgageType &&
        employmentStatus == other.employmentStatus &&
        monthlyIncome == other.monthlyIncome &&
        relationshipStatus == other.relationshipStatus &&
        homeRent == other.homeRent &&
        requestUser == other.requestUser &&
        time == other.time &&
        interestReq == other.interestReq &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, mortgageType.hashCode),
                                    employmentStatus.hashCode),
                                monthlyIncome.hashCode),
                            relationshipStatus.hashCode),
                        homeRent.hashCode),
                    requestUser.hashCode),
                time.hashCode),
            interestReq.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MortgageRequestRecord')
          ..add('mortgageType', mortgageType)
          ..add('employmentStatus', employmentStatus)
          ..add('monthlyIncome', monthlyIncome)
          ..add('relationshipStatus', relationshipStatus)
          ..add('homeRent', homeRent)
          ..add('requestUser', requestUser)
          ..add('time', time)
          ..add('interestReq', interestReq)
          ..add('reference', reference))
        .toString();
  }
}

class MortgageRequestRecordBuilder
    implements Builder<MortgageRequestRecord, MortgageRequestRecordBuilder> {
  _$MortgageRequestRecord _$v;

  String _mortgageType;
  String get mortgageType => _$this._mortgageType;
  set mortgageType(String mortgageType) => _$this._mortgageType = mortgageType;

  String _employmentStatus;
  String get employmentStatus => _$this._employmentStatus;
  set employmentStatus(String employmentStatus) =>
      _$this._employmentStatus = employmentStatus;

  String _monthlyIncome;
  String get monthlyIncome => _$this._monthlyIncome;
  set monthlyIncome(String monthlyIncome) =>
      _$this._monthlyIncome = monthlyIncome;

  String _relationshipStatus;
  String get relationshipStatus => _$this._relationshipStatus;
  set relationshipStatus(String relationshipStatus) =>
      _$this._relationshipStatus = relationshipStatus;

  String _homeRent;
  String get homeRent => _$this._homeRent;
  set homeRent(String homeRent) => _$this._homeRent = homeRent;

  DocumentReference<Object> _requestUser;
  DocumentReference<Object> get requestUser => _$this._requestUser;
  set requestUser(DocumentReference<Object> requestUser) =>
      _$this._requestUser = requestUser;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  bool _interestReq;
  bool get interestReq => _$this._interestReq;
  set interestReq(bool interestReq) => _$this._interestReq = interestReq;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MortgageRequestRecordBuilder() {
    MortgageRequestRecord._initializeBuilder(this);
  }

  MortgageRequestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mortgageType = $v.mortgageType;
      _employmentStatus = $v.employmentStatus;
      _monthlyIncome = $v.monthlyIncome;
      _relationshipStatus = $v.relationshipStatus;
      _homeRent = $v.homeRent;
      _requestUser = $v.requestUser;
      _time = $v.time;
      _interestReq = $v.interestReq;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MortgageRequestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MortgageRequestRecord;
  }

  @override
  void update(void Function(MortgageRequestRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MortgageRequestRecord build() {
    final _$result = _$v ??
        new _$MortgageRequestRecord._(
            mortgageType: mortgageType,
            employmentStatus: employmentStatus,
            monthlyIncome: monthlyIncome,
            relationshipStatus: relationshipStatus,
            homeRent: homeRent,
            requestUser: requestUser,
            time: time,
            interestReq: interestReq,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
