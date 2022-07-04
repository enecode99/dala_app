import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mortgage_request_record.g.dart';

abstract class MortgageRequestRecord
    implements Built<MortgageRequestRecord, MortgageRequestRecordBuilder> {
  static Serializer<MortgageRequestRecord> get serializer =>
      _$mortgageRequestRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'mortgage_type')
  String get mortgageType;

  @nullable
  @BuiltValueField(wireName: 'employment_status')
  String get employmentStatus;

  @nullable
  @BuiltValueField(wireName: 'monthly_income')
  String get monthlyIncome;

  @nullable
  @BuiltValueField(wireName: 'relationship_status')
  String get relationshipStatus;

  @nullable
  @BuiltValueField(wireName: 'home_rent')
  String get homeRent;

  @nullable
  @BuiltValueField(wireName: 'request_user')
  DocumentReference get requestUser;

  @nullable
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: 'interest_req')
  bool get interestReq;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MortgageRequestRecordBuilder builder) =>
      builder
        ..mortgageType = ''
        ..employmentStatus = ''
        ..monthlyIncome = ''
        ..relationshipStatus = ''
        ..homeRent = ''
        ..interestReq = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mortgage_request');

  static Stream<MortgageRequestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MortgageRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MortgageRequestRecord._();
  factory MortgageRequestRecord(
          [void Function(MortgageRequestRecordBuilder) updates]) =
      _$MortgageRequestRecord;

  static MortgageRequestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMortgageRequestRecordData({
  String mortgageType,
  String employmentStatus,
  String monthlyIncome,
  String relationshipStatus,
  String homeRent,
  DocumentReference requestUser,
  DateTime time,
  bool interestReq,
}) =>
    serializers.toFirestore(
        MortgageRequestRecord.serializer,
        MortgageRequestRecord((m) => m
          ..mortgageType = mortgageType
          ..employmentStatus = employmentStatus
          ..monthlyIncome = monthlyIncome
          ..relationshipStatus = relationshipStatus
          ..homeRent = homeRent
          ..requestUser = requestUser
          ..time = time
          ..interestReq = interestReq));
