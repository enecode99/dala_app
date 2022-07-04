// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.businessAdmin;
    if (value != null) {
      result
        ..add('business_admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.house;
    if (value != null) {
      result
        ..add('house')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.transaction;
    if (value != null) {
      result
        ..add('transaction')
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
    value = object.planAvailable;
    if (value != null) {
      result
        ..add('plan_available')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.renovation;
    if (value != null) {
      result
        ..add('renovation')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerAdmin;
    if (value != null) {
      result
        ..add('owner_admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tipInfo;
    if (value != null) {
      result
        ..add('tip_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseStandard;
    if (value != null) {
      result
        ..add('house_standard')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'business_admin':
          result.businessAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house':
          result.house = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'transaction':
          result.transaction = serializers.deserialize(value,
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
        case 'plan_available':
          result.planAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'renovation':
          result.renovation = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'owner_admin':
          result.ownerAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'tip_info':
          result.tipInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_standard':
          result.houseStandard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final bool businessAdmin;
  @override
  final String email;
  @override
  final DocumentReference<Object> house;
  @override
  final DocumentReference<Object> transaction;
  @override
  final DocumentReference<Object> userPlan;
  @override
  final bool planAvailable;
  @override
  final bool renovation;
  @override
  final bool ownerAdmin;
  @override
  final DateTime time;
  @override
  final String tipInfo;
  @override
  final String houseStandard;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.businessAdmin,
      this.email,
      this.house,
      this.transaction,
      this.userPlan,
      this.planAvailable,
      this.renovation,
      this.ownerAdmin,
      this.time,
      this.tipInfo,
      this.houseStandard,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        businessAdmin == other.businessAdmin &&
        email == other.email &&
        house == other.house &&
        transaction == other.transaction &&
        userPlan == other.userPlan &&
        planAvailable == other.planAvailable &&
        renovation == other.renovation &&
        ownerAdmin == other.ownerAdmin &&
        time == other.time &&
        tipInfo == other.tipInfo &&
        houseStandard == other.houseStandard &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        displayName
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    businessAdmin.hashCode),
                                                email.hashCode),
                                            house.hashCode),
                                        transaction.hashCode),
                                    userPlan.hashCode),
                                planAvailable.hashCode),
                            renovation.hashCode),
                        ownerAdmin.hashCode),
                    time.hashCode),
                tipInfo.hashCode),
            houseStandard.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('businessAdmin', businessAdmin)
          ..add('email', email)
          ..add('house', house)
          ..add('transaction', transaction)
          ..add('userPlan', userPlan)
          ..add('planAvailable', planAvailable)
          ..add('renovation', renovation)
          ..add('ownerAdmin', ownerAdmin)
          ..add('time', time)
          ..add('tipInfo', tipInfo)
          ..add('houseStandard', houseStandard)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _businessAdmin;
  bool get businessAdmin => _$this._businessAdmin;
  set businessAdmin(bool businessAdmin) =>
      _$this._businessAdmin = businessAdmin;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DocumentReference<Object> _house;
  DocumentReference<Object> get house => _$this._house;
  set house(DocumentReference<Object> house) => _$this._house = house;

  DocumentReference<Object> _transaction;
  DocumentReference<Object> get transaction => _$this._transaction;
  set transaction(DocumentReference<Object> transaction) =>
      _$this._transaction = transaction;

  DocumentReference<Object> _userPlan;
  DocumentReference<Object> get userPlan => _$this._userPlan;
  set userPlan(DocumentReference<Object> userPlan) =>
      _$this._userPlan = userPlan;

  bool _planAvailable;
  bool get planAvailable => _$this._planAvailable;
  set planAvailable(bool planAvailable) =>
      _$this._planAvailable = planAvailable;

  bool _renovation;
  bool get renovation => _$this._renovation;
  set renovation(bool renovation) => _$this._renovation = renovation;

  bool _ownerAdmin;
  bool get ownerAdmin => _$this._ownerAdmin;
  set ownerAdmin(bool ownerAdmin) => _$this._ownerAdmin = ownerAdmin;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _tipInfo;
  String get tipInfo => _$this._tipInfo;
  set tipInfo(String tipInfo) => _$this._tipInfo = tipInfo;

  String _houseStandard;
  String get houseStandard => _$this._houseStandard;
  set houseStandard(String houseStandard) =>
      _$this._houseStandard = houseStandard;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _businessAdmin = $v.businessAdmin;
      _email = $v.email;
      _house = $v.house;
      _transaction = $v.transaction;
      _userPlan = $v.userPlan;
      _planAvailable = $v.planAvailable;
      _renovation = $v.renovation;
      _ownerAdmin = $v.ownerAdmin;
      _time = $v.time;
      _tipInfo = $v.tipInfo;
      _houseStandard = $v.houseStandard;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            businessAdmin: businessAdmin,
            email: email,
            house: house,
            transaction: transaction,
            userPlan: userPlan,
            planAvailable: planAvailable,
            renovation: renovation,
            ownerAdmin: ownerAdmin,
            time: time,
            tipInfo: tipInfo,
            houseStandard: houseStandard,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
