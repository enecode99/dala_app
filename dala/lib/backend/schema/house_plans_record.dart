import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'house_plans_record.g.dart';

abstract class HousePlansRecord
    implements Built<HousePlansRecord, HousePlansRecordBuilder> {
  static Serializer<HousePlansRecord> get serializer =>
      _$housePlansRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'plan_name')
  String get planName;

  @nullable
  @BuiltValueField(wireName: 'paid_goal')
  int get paidGoal;

  @nullable
  @BuiltValueField(wireName: 'plan_house')
  DocumentReference get planHouse;

  @nullable
  @BuiltValueField(wireName: 'user_plan')
  DocumentReference get userPlan;

  @nullable
  @BuiltValueField(wireName: 'plan_photo')
  String get planPhoto;

  @nullable
  @BuiltValueField(wireName: 'plan_active')
  bool get planActive;

  @nullable
  @BuiltValueField(wireName: 'plan_transaction')
  BuiltList<DocumentReference> get planTransaction;

  @nullable
  @BuiltValueField(wireName: 'plan_time')
  DateTime get planTime;

  @nullable
  @BuiltValueField(wireName: 'house_renovation')
  bool get houseRenovation;

  @nullable
  @BuiltValueField(wireName: 'business_code')
  String get businessCode;

  @nullable
  @BuiltValueField(wireName: 'house_sell')
  bool get houseSell;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HousePlansRecordBuilder builder) => builder
    ..planName = ''
    ..paidGoal = 0
    ..planPhoto = ''
    ..planActive = false
    ..planTransaction = ListBuilder()
    ..houseRenovation = false
    ..businessCode = ''
    ..houseSell = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('house_plans');

  static Stream<HousePlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HousePlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HousePlansRecord._();
  factory HousePlansRecord([void Function(HousePlansRecordBuilder) updates]) =
      _$HousePlansRecord;

  static HousePlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHousePlansRecordData({
  String planName,
  int paidGoal,
  DocumentReference planHouse,
  DocumentReference userPlan,
  String planPhoto,
  bool planActive,
  DateTime planTime,
  bool houseRenovation,
  String businessCode,
  bool houseSell,
}) =>
    serializers.toFirestore(
        HousePlansRecord.serializer,
        HousePlansRecord((h) => h
          ..planName = planName
          ..paidGoal = paidGoal
          ..planHouse = planHouse
          ..userPlan = userPlan
          ..planPhoto = planPhoto
          ..planActive = planActive
          ..planTransaction = null
          ..planTime = planTime
          ..houseRenovation = houseRenovation
          ..businessCode = businessCode
          ..houseSell = houseSell));
