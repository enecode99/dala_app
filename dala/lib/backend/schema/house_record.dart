import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'house_record.g.dart';

abstract class HouseRecord implements Built<HouseRecord, HouseRecordBuilder> {
  static Serializer<HouseRecord> get serializer => _$houseRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'house_name')
  String get houseName;

  @nullable
  @BuiltValueField(wireName: 'house_images')
  BuiltList<String> get houseImages;

  @nullable
  @BuiltValueField(wireName: 'house_video')
  String get houseVideo;

  @nullable
  @BuiltValueField(wireName: 'house_information')
  String get houseInformation;

  @nullable
  @BuiltValueField(wireName: 'house_price')
  int get housePrice;

  @nullable
  @BuiltValueField(wireName: 'house_photo')
  String get housePhoto;

  @nullable
  @BuiltValueField(wireName: 'house_builder')
  DocumentReference get houseBuilder;

  @nullable
  @BuiltValueField(wireName: 'house_buyer')
  BuiltList<DocumentReference> get houseBuyer;

  @nullable
  @BuiltValueField(wireName: 'house_favorite')
  BuiltList<DocumentReference> get houseFavorite;

  @nullable
  @BuiltValueField(wireName: 'house_anonimity')
  bool get houseAnonimity;

  @nullable
  @BuiltValueField(wireName: 'request_user')
  DocumentReference get requestUser;

  @nullable
  @BuiltValueField(wireName: 'house_plan')
  BuiltList<DocumentReference> get housePlan;

  @nullable
  @BuiltValueField(wireName: 'house_offer')
  String get houseOffer;

  @nullable
  @BuiltValueField(wireName: 'house_renovation')
  bool get houseRenovation;

  @nullable
  @BuiltValueField(wireName: 'house_sell')
  bool get houseSell;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HouseRecordBuilder builder) => builder
    ..houseName = ''
    ..houseImages = ListBuilder()
    ..houseVideo = ''
    ..houseInformation = ''
    ..housePrice = 0
    ..housePhoto = ''
    ..houseBuyer = ListBuilder()
    ..houseFavorite = ListBuilder()
    ..houseAnonimity = false
    ..housePlan = ListBuilder()
    ..houseOffer = ''
    ..houseRenovation = false
    ..houseSell = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('house');

  static Stream<HouseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HouseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HouseRecord._();
  factory HouseRecord([void Function(HouseRecordBuilder) updates]) =
      _$HouseRecord;

  static HouseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHouseRecordData({
  String houseName,
  String houseVideo,
  String houseInformation,
  int housePrice,
  String housePhoto,
  DocumentReference houseBuilder,
  bool houseAnonimity,
  DocumentReference requestUser,
  String houseOffer,
  bool houseRenovation,
  bool houseSell,
}) =>
    serializers.toFirestore(
        HouseRecord.serializer,
        HouseRecord((h) => h
          ..houseName = houseName
          ..houseImages = null
          ..houseVideo = houseVideo
          ..houseInformation = houseInformation
          ..housePrice = housePrice
          ..housePhoto = housePhoto
          ..houseBuilder = houseBuilder
          ..houseBuyer = null
          ..houseFavorite = null
          ..houseAnonimity = houseAnonimity
          ..requestUser = requestUser
          ..housePlan = null
          ..houseOffer = houseOffer
          ..houseRenovation = houseRenovation
          ..houseSell = houseSell));
