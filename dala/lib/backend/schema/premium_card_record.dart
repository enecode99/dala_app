import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'premium_card_record.g.dart';

abstract class PremiumCardRecord
    implements Built<PremiumCardRecord, PremiumCardRecordBuilder> {
  static Serializer<PremiumCardRecord> get serializer =>
      _$premiumCardRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'card_username')
  String get cardUsername;

  @nullable
  @BuiltValueField(wireName: 'card_name')
  String get cardName;

  @nullable
  @BuiltValueField(wireName: 'card_barcode')
  String get cardBarcode;

  @nullable
  @BuiltValueField(wireName: 'card_barcodeID')
  String get cardBarcodeID;

  @nullable
  @BuiltValueField(wireName: 'card_email')
  String get cardEmail;

  @nullable
  @BuiltValueField(wireName: 'card_phone')
  String get cardPhone;

  @nullable
  @BuiltValueField(wireName: 'card_expiredate')
  DateTime get cardExpiredate;

  @nullable
  @BuiltValueField(wireName: 'card_QRcode')
  String get cardQRcode;

  @nullable
  @BuiltValueField(wireName: 'card_activedate')
  DateTime get cardActivedate;

  @nullable
  @BuiltValueField(wireName: 'card_time')
  DateTime get cardTime;

  @nullable
  @BuiltValueField(wireName: 'card_user')
  DocumentReference get cardUser;

  @nullable
  @BuiltValueField(wireName: 'card_images')
  BuiltList<String> get cardImages;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PremiumCardRecordBuilder builder) => builder
    ..cardUsername = ''
    ..cardName = ''
    ..cardBarcode = ''
    ..cardBarcodeID = ''
    ..cardEmail = ''
    ..cardPhone = ''
    ..cardQRcode = ''
    ..cardImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('premium_card');

  static Stream<PremiumCardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PremiumCardRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PremiumCardRecord._();
  factory PremiumCardRecord([void Function(PremiumCardRecordBuilder) updates]) =
      _$PremiumCardRecord;

  static PremiumCardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPremiumCardRecordData({
  String cardUsername,
  String cardName,
  String cardBarcode,
  String cardBarcodeID,
  String cardEmail,
  String cardPhone,
  DateTime cardExpiredate,
  String cardQRcode,
  DateTime cardActivedate,
  DateTime cardTime,
  DocumentReference cardUser,
}) =>
    serializers.toFirestore(
        PremiumCardRecord.serializer,
        PremiumCardRecord((p) => p
          ..cardUsername = cardUsername
          ..cardName = cardName
          ..cardBarcode = cardBarcode
          ..cardBarcodeID = cardBarcodeID
          ..cardEmail = cardEmail
          ..cardPhone = cardPhone
          ..cardExpiredate = cardExpiredate
          ..cardQRcode = cardQRcode
          ..cardActivedate = cardActivedate
          ..cardTime = cardTime
          ..cardUser = cardUser
          ..cardImages = null));
