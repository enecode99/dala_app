// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_card_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PremiumCardRecord> _$premiumCardRecordSerializer =
    new _$PremiumCardRecordSerializer();

class _$PremiumCardRecordSerializer
    implements StructuredSerializer<PremiumCardRecord> {
  @override
  final Iterable<Type> types = const [PremiumCardRecord, _$PremiumCardRecord];
  @override
  final String wireName = 'PremiumCardRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PremiumCardRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cardUsername;
    if (value != null) {
      result
        ..add('card_username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardName;
    if (value != null) {
      result
        ..add('card_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardBarcode;
    if (value != null) {
      result
        ..add('card_barcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardBarcodeID;
    if (value != null) {
      result
        ..add('card_barcodeID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardEmail;
    if (value != null) {
      result
        ..add('card_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardPhone;
    if (value != null) {
      result
        ..add('card_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardExpiredate;
    if (value != null) {
      result
        ..add('card_expiredate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cardQRcode;
    if (value != null) {
      result
        ..add('card_QRcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardActivedate;
    if (value != null) {
      result
        ..add('card_activedate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cardTime;
    if (value != null) {
      result
        ..add('card_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cardUser;
    if (value != null) {
      result
        ..add('card_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.cardImages;
    if (value != null) {
      result
        ..add('card_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  PremiumCardRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PremiumCardRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'card_username':
          result.cardUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_name':
          result.cardName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_barcode':
          result.cardBarcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_barcodeID':
          result.cardBarcodeID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_email':
          result.cardEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_phone':
          result.cardPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_expiredate':
          result.cardExpiredate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'card_QRcode':
          result.cardQRcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'card_activedate':
          result.cardActivedate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'card_time':
          result.cardTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'card_user':
          result.cardUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'card_images':
          result.cardImages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$PremiumCardRecord extends PremiumCardRecord {
  @override
  final String cardUsername;
  @override
  final String cardName;
  @override
  final String cardBarcode;
  @override
  final String cardBarcodeID;
  @override
  final String cardEmail;
  @override
  final String cardPhone;
  @override
  final DateTime cardExpiredate;
  @override
  final String cardQRcode;
  @override
  final DateTime cardActivedate;
  @override
  final DateTime cardTime;
  @override
  final DocumentReference<Object> cardUser;
  @override
  final BuiltList<String> cardImages;
  @override
  final DocumentReference<Object> reference;

  factory _$PremiumCardRecord(
          [void Function(PremiumCardRecordBuilder) updates]) =>
      (new PremiumCardRecordBuilder()..update(updates)).build();

  _$PremiumCardRecord._(
      {this.cardUsername,
      this.cardName,
      this.cardBarcode,
      this.cardBarcodeID,
      this.cardEmail,
      this.cardPhone,
      this.cardExpiredate,
      this.cardQRcode,
      this.cardActivedate,
      this.cardTime,
      this.cardUser,
      this.cardImages,
      this.reference})
      : super._();

  @override
  PremiumCardRecord rebuild(void Function(PremiumCardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumCardRecordBuilder toBuilder() =>
      new PremiumCardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumCardRecord &&
        cardUsername == other.cardUsername &&
        cardName == other.cardName &&
        cardBarcode == other.cardBarcode &&
        cardBarcodeID == other.cardBarcodeID &&
        cardEmail == other.cardEmail &&
        cardPhone == other.cardPhone &&
        cardExpiredate == other.cardExpiredate &&
        cardQRcode == other.cardQRcode &&
        cardActivedate == other.cardActivedate &&
        cardTime == other.cardTime &&
        cardUser == other.cardUser &&
        cardImages == other.cardImages &&
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
                                                    $jc(0,
                                                        cardUsername.hashCode),
                                                    cardName.hashCode),
                                                cardBarcode.hashCode),
                                            cardBarcodeID.hashCode),
                                        cardEmail.hashCode),
                                    cardPhone.hashCode),
                                cardExpiredate.hashCode),
                            cardQRcode.hashCode),
                        cardActivedate.hashCode),
                    cardTime.hashCode),
                cardUser.hashCode),
            cardImages.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PremiumCardRecord')
          ..add('cardUsername', cardUsername)
          ..add('cardName', cardName)
          ..add('cardBarcode', cardBarcode)
          ..add('cardBarcodeID', cardBarcodeID)
          ..add('cardEmail', cardEmail)
          ..add('cardPhone', cardPhone)
          ..add('cardExpiredate', cardExpiredate)
          ..add('cardQRcode', cardQRcode)
          ..add('cardActivedate', cardActivedate)
          ..add('cardTime', cardTime)
          ..add('cardUser', cardUser)
          ..add('cardImages', cardImages)
          ..add('reference', reference))
        .toString();
  }
}

class PremiumCardRecordBuilder
    implements Builder<PremiumCardRecord, PremiumCardRecordBuilder> {
  _$PremiumCardRecord _$v;

  String _cardUsername;
  String get cardUsername => _$this._cardUsername;
  set cardUsername(String cardUsername) => _$this._cardUsername = cardUsername;

  String _cardName;
  String get cardName => _$this._cardName;
  set cardName(String cardName) => _$this._cardName = cardName;

  String _cardBarcode;
  String get cardBarcode => _$this._cardBarcode;
  set cardBarcode(String cardBarcode) => _$this._cardBarcode = cardBarcode;

  String _cardBarcodeID;
  String get cardBarcodeID => _$this._cardBarcodeID;
  set cardBarcodeID(String cardBarcodeID) =>
      _$this._cardBarcodeID = cardBarcodeID;

  String _cardEmail;
  String get cardEmail => _$this._cardEmail;
  set cardEmail(String cardEmail) => _$this._cardEmail = cardEmail;

  String _cardPhone;
  String get cardPhone => _$this._cardPhone;
  set cardPhone(String cardPhone) => _$this._cardPhone = cardPhone;

  DateTime _cardExpiredate;
  DateTime get cardExpiredate => _$this._cardExpiredate;
  set cardExpiredate(DateTime cardExpiredate) =>
      _$this._cardExpiredate = cardExpiredate;

  String _cardQRcode;
  String get cardQRcode => _$this._cardQRcode;
  set cardQRcode(String cardQRcode) => _$this._cardQRcode = cardQRcode;

  DateTime _cardActivedate;
  DateTime get cardActivedate => _$this._cardActivedate;
  set cardActivedate(DateTime cardActivedate) =>
      _$this._cardActivedate = cardActivedate;

  DateTime _cardTime;
  DateTime get cardTime => _$this._cardTime;
  set cardTime(DateTime cardTime) => _$this._cardTime = cardTime;

  DocumentReference<Object> _cardUser;
  DocumentReference<Object> get cardUser => _$this._cardUser;
  set cardUser(DocumentReference<Object> cardUser) =>
      _$this._cardUser = cardUser;

  ListBuilder<String> _cardImages;
  ListBuilder<String> get cardImages =>
      _$this._cardImages ??= new ListBuilder<String>();
  set cardImages(ListBuilder<String> cardImages) =>
      _$this._cardImages = cardImages;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PremiumCardRecordBuilder() {
    PremiumCardRecord._initializeBuilder(this);
  }

  PremiumCardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cardUsername = $v.cardUsername;
      _cardName = $v.cardName;
      _cardBarcode = $v.cardBarcode;
      _cardBarcodeID = $v.cardBarcodeID;
      _cardEmail = $v.cardEmail;
      _cardPhone = $v.cardPhone;
      _cardExpiredate = $v.cardExpiredate;
      _cardQRcode = $v.cardQRcode;
      _cardActivedate = $v.cardActivedate;
      _cardTime = $v.cardTime;
      _cardUser = $v.cardUser;
      _cardImages = $v.cardImages?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumCardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PremiumCardRecord;
  }

  @override
  void update(void Function(PremiumCardRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PremiumCardRecord build() {
    _$PremiumCardRecord _$result;
    try {
      _$result = _$v ??
          new _$PremiumCardRecord._(
              cardUsername: cardUsername,
              cardName: cardName,
              cardBarcode: cardBarcode,
              cardBarcodeID: cardBarcodeID,
              cardEmail: cardEmail,
              cardPhone: cardPhone,
              cardExpiredate: cardExpiredate,
              cardQRcode: cardQRcode,
              cardActivedate: cardActivedate,
              cardTime: cardTime,
              cardUser: cardUser,
              cardImages: _cardImages?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cardImages';
        _cardImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PremiumCardRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
