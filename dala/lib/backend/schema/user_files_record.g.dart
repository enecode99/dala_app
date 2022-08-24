// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_files_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserFilesRecord> _$userFilesRecordSerializer =
    new _$UserFilesRecordSerializer();

class _$UserFilesRecordSerializer
    implements StructuredSerializer<UserFilesRecord> {
  @override
  final Iterable<Type> types = const [UserFilesRecord, _$UserFilesRecord];
  @override
  final String wireName = 'UserFilesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserFilesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.monthlyIncome;
    if (value != null) {
      result
        ..add('monthly_income')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleDeed;
    if (value != null) {
      result
        ..add('title_deed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeDuration;
    if (value != null) {
      result
        ..add('time_duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentTime;
    if (value != null) {
      result
        ..add('current_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.downPayment;
    if (value != null) {
      result
        ..add('down-payment')
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
  UserFilesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserFilesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'employment_status':
          result.employmentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'monthly_income':
          result.monthlyIncome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_deed':
          result.titleDeed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time_duration':
          result.timeDuration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_time':
          result.currentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'down-payment':
          result.downPayment = serializers.deserialize(value,
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

class _$UserFilesRecord extends UserFilesRecord {
  @override
  final String userName;
  @override
  final String employmentStatus;
  @override
  final DocumentReference<Object> user;
  @override
  final String monthlyIncome;
  @override
  final String titleDeed;
  @override
  final String timeDuration;
  @override
  final DateTime currentTime;
  @override
  final String downPayment;
  @override
  final DocumentReference<Object> reference;

  factory _$UserFilesRecord([void Function(UserFilesRecordBuilder) updates]) =>
      (new UserFilesRecordBuilder()..update(updates))._build();

  _$UserFilesRecord._(
      {this.userName,
      this.employmentStatus,
      this.user,
      this.monthlyIncome,
      this.titleDeed,
      this.timeDuration,
      this.currentTime,
      this.downPayment,
      this.reference})
      : super._();

  @override
  UserFilesRecord rebuild(void Function(UserFilesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserFilesRecordBuilder toBuilder() =>
      new UserFilesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserFilesRecord &&
        userName == other.userName &&
        employmentStatus == other.employmentStatus &&
        user == other.user &&
        monthlyIncome == other.monthlyIncome &&
        titleDeed == other.titleDeed &&
        timeDuration == other.timeDuration &&
        currentTime == other.currentTime &&
        downPayment == other.downPayment &&
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
                                $jc($jc(0, userName.hashCode),
                                    employmentStatus.hashCode),
                                user.hashCode),
                            monthlyIncome.hashCode),
                        titleDeed.hashCode),
                    timeDuration.hashCode),
                currentTime.hashCode),
            downPayment.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserFilesRecord')
          ..add('userName', userName)
          ..add('employmentStatus', employmentStatus)
          ..add('user', user)
          ..add('monthlyIncome', monthlyIncome)
          ..add('titleDeed', titleDeed)
          ..add('timeDuration', timeDuration)
          ..add('currentTime', currentTime)
          ..add('downPayment', downPayment)
          ..add('reference', reference))
        .toString();
  }
}

class UserFilesRecordBuilder
    implements Builder<UserFilesRecord, UserFilesRecordBuilder> {
  _$UserFilesRecord _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _employmentStatus;
  String get employmentStatus => _$this._employmentStatus;
  set employmentStatus(String employmentStatus) =>
      _$this._employmentStatus = employmentStatus;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _monthlyIncome;
  String get monthlyIncome => _$this._monthlyIncome;
  set monthlyIncome(String monthlyIncome) =>
      _$this._monthlyIncome = monthlyIncome;

  String _titleDeed;
  String get titleDeed => _$this._titleDeed;
  set titleDeed(String titleDeed) => _$this._titleDeed = titleDeed;

  String _timeDuration;
  String get timeDuration => _$this._timeDuration;
  set timeDuration(String timeDuration) => _$this._timeDuration = timeDuration;

  DateTime _currentTime;
  DateTime get currentTime => _$this._currentTime;
  set currentTime(DateTime currentTime) => _$this._currentTime = currentTime;

  String _downPayment;
  String get downPayment => _$this._downPayment;
  set downPayment(String downPayment) => _$this._downPayment = downPayment;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserFilesRecordBuilder() {
    UserFilesRecord._initializeBuilder(this);
  }

  UserFilesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _employmentStatus = $v.employmentStatus;
      _user = $v.user;
      _monthlyIncome = $v.monthlyIncome;
      _titleDeed = $v.titleDeed;
      _timeDuration = $v.timeDuration;
      _currentTime = $v.currentTime;
      _downPayment = $v.downPayment;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserFilesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserFilesRecord;
  }

  @override
  void update(void Function(UserFilesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  UserFilesRecord build() => _build();

  _$UserFilesRecord _build() {
    final _$result = _$v ??
        new _$UserFilesRecord._(
            userName: userName,
            employmentStatus: employmentStatus,
            user: user,
            monthlyIncome: monthlyIncome,
            titleDeed: titleDeed,
            timeDuration: timeDuration,
            currentTime: currentTime,
            downPayment: downPayment,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
