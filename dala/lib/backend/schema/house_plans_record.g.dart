// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HousePlansRecord> _$housePlansRecordSerializer =
    new _$HousePlansRecordSerializer();

class _$HousePlansRecordSerializer
    implements StructuredSerializer<HousePlansRecord> {
  @override
  final Iterable<Type> types = const [HousePlansRecord, _$HousePlansRecord];
  @override
  final String wireName = 'HousePlansRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HousePlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.planName;
    if (value != null) {
      result
        ..add('plan_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paidGoal;
    if (value != null) {
      result
        ..add('paid_goal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.planHouse;
    if (value != null) {
      result
        ..add('plan_house')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userPlan;
    if (value != null) {
      result
        ..add('user_plan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.planPhoto;
    if (value != null) {
      result
        ..add('plan_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planActive;
    if (value != null) {
      result
        ..add('plan_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.planTransaction;
    if (value != null) {
      result
        ..add('plan_transaction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.planTime;
    if (value != null) {
      result
        ..add('plan_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.houseRenovation;
    if (value != null) {
      result
        ..add('house_renovation')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.businessCode;
    if (value != null) {
      result
        ..add('business_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseSell;
    if (value != null) {
      result
        ..add('house_sell')
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
  HousePlansRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HousePlansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'plan_name':
          result.planName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paid_goal':
          result.paidGoal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plan_house':
          result.planHouse = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_plan':
          result.userPlan = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'plan_photo':
          result.planPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'plan_active':
          result.planActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'plan_transaction':
          result.planTransaction.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'plan_time':
          result.planTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'house_renovation':
          result.houseRenovation = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'business_code':
          result.businessCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_sell':
          result.houseSell = serializers.deserialize(value,
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

class _$HousePlansRecord extends HousePlansRecord {
  @override
  final String planName;
  @override
  final int paidGoal;
  @override
  final DocumentReference<Object> planHouse;
  @override
  final DocumentReference<Object> userPlan;
  @override
  final String planPhoto;
  @override
  final bool planActive;
  @override
  final BuiltList<DocumentReference<Object>> planTransaction;
  @override
  final DateTime planTime;
  @override
  final bool houseRenovation;
  @override
  final String businessCode;
  @override
  final bool houseSell;
  @override
  final DocumentReference<Object> reference;

  factory _$HousePlansRecord(
          [void Function(HousePlansRecordBuilder) updates]) =>
      (new HousePlansRecordBuilder()..update(updates)).build();

  _$HousePlansRecord._(
      {this.planName,
      this.paidGoal,
      this.planHouse,
      this.userPlan,
      this.planPhoto,
      this.planActive,
      this.planTransaction,
      this.planTime,
      this.houseRenovation,
      this.businessCode,
      this.houseSell,
      this.reference})
      : super._();

  @override
  HousePlansRecord rebuild(void Function(HousePlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HousePlansRecordBuilder toBuilder() =>
      new HousePlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HousePlansRecord &&
        planName == other.planName &&
        paidGoal == other.paidGoal &&
        planHouse == other.planHouse &&
        userPlan == other.userPlan &&
        planPhoto == other.planPhoto &&
        planActive == other.planActive &&
        planTransaction == other.planTransaction &&
        planTime == other.planTime &&
        houseRenovation == other.houseRenovation &&
        businessCode == other.businessCode &&
        houseSell == other.houseSell &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, planName.hashCode),
                                                paidGoal.hashCode),
                                            planHouse.hashCode),
                                        userPlan.hashCode),
                                    planPhoto.hashCode),
                                planActive.hashCode),
                            planTransaction.hashCode),
                        planTime.hashCode),
                    houseRenovation.hashCode),
                businessCode.hashCode),
            houseSell.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HousePlansRecord')
          ..add('planName', planName)
          ..add('paidGoal', paidGoal)
          ..add('planHouse', planHouse)
          ..add('userPlan', userPlan)
          ..add('planPhoto', planPhoto)
          ..add('planActive', planActive)
          ..add('planTransaction', planTransaction)
          ..add('planTime', planTime)
          ..add('houseRenovation', houseRenovation)
          ..add('businessCode', businessCode)
          ..add('houseSell', houseSell)
          ..add('reference', reference))
        .toString();
  }
}

class HousePlansRecordBuilder
    implements Builder<HousePlansRecord, HousePlansRecordBuilder> {
  _$HousePlansRecord _$v;

  String _planName;
  String get planName => _$this._planName;
  set planName(String planName) => _$this._planName = planName;

  int _paidGoal;
  int get paidGoal => _$this._paidGoal;
  set paidGoal(int paidGoal) => _$this._paidGoal = paidGoal;

  DocumentReference<Object> _planHouse;
  DocumentReference<Object> get planHouse => _$this._planHouse;
  set planHouse(DocumentReference<Object> planHouse) =>
      _$this._planHouse = planHouse;

  DocumentReference<Object> _userPlan;
  DocumentReference<Object> get userPlan => _$this._userPlan;
  set userPlan(DocumentReference<Object> userPlan) =>
      _$this._userPlan = userPlan;

  String _planPhoto;
  String get planPhoto => _$this._planPhoto;
  set planPhoto(String planPhoto) => _$this._planPhoto = planPhoto;

  bool _planActive;
  bool get planActive => _$this._planActive;
  set planActive(bool planActive) => _$this._planActive = planActive;

  ListBuilder<DocumentReference<Object>> _planTransaction;
  ListBuilder<DocumentReference<Object>> get planTransaction =>
      _$this._planTransaction ??= new ListBuilder<DocumentReference<Object>>();
  set planTransaction(ListBuilder<DocumentReference<Object>> planTransaction) =>
      _$this._planTransaction = planTransaction;

  DateTime _planTime;
  DateTime get planTime => _$this._planTime;
  set planTime(DateTime planTime) => _$this._planTime = planTime;

  bool _houseRenovation;
  bool get houseRenovation => _$this._houseRenovation;
  set houseRenovation(bool houseRenovation) =>
      _$this._houseRenovation = houseRenovation;

  String _businessCode;
  String get businessCode => _$this._businessCode;
  set businessCode(String businessCode) => _$this._businessCode = businessCode;

  bool _houseSell;
  bool get houseSell => _$this._houseSell;
  set houseSell(bool houseSell) => _$this._houseSell = houseSell;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HousePlansRecordBuilder() {
    HousePlansRecord._initializeBuilder(this);
  }

  HousePlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _planName = $v.planName;
      _paidGoal = $v.paidGoal;
      _planHouse = $v.planHouse;
      _userPlan = $v.userPlan;
      _planPhoto = $v.planPhoto;
      _planActive = $v.planActive;
      _planTransaction = $v.planTransaction?.toBuilder();
      _planTime = $v.planTime;
      _houseRenovation = $v.houseRenovation;
      _businessCode = $v.businessCode;
      _houseSell = $v.houseSell;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HousePlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HousePlansRecord;
  }

  @override
  void update(void Function(HousePlansRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HousePlansRecord build() {
    _$HousePlansRecord _$result;
    try {
      _$result = _$v ??
          new _$HousePlansRecord._(
              planName: planName,
              paidGoal: paidGoal,
              planHouse: planHouse,
              userPlan: userPlan,
              planPhoto: planPhoto,
              planActive: planActive,
              planTransaction: _planTransaction?.build(),
              planTime: planTime,
              houseRenovation: houseRenovation,
              businessCode: businessCode,
              houseSell: houseSell,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'planTransaction';
        _planTransaction?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HousePlansRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
