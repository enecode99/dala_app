import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'home_request_record.g.dart';

abstract class HomeRequestRecord
    implements Built<HomeRequestRecord, HomeRequestRecordBuilder> {
  static Serializer<HomeRequestRecord> get serializer =>
      _$homeRequestRecordSerializer;

  @nullable
  String get rooms;

  @nullable
  @BuiltValueField(wireName: 'more_details')
  String get moreDetails;

  @nullable
  @BuiltValueField(wireName: 'request_user')
  DocumentReference get requestUser;

  @nullable
  @BuiltValueField(wireName: 'budget_amount')
  String get budgetAmount;

  @nullable
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HomeRequestRecordBuilder builder) => builder
    ..rooms = ''
    ..moreDetails = ''
    ..budgetAmount = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('home_request');

  static Stream<HomeRequestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HomeRequestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HomeRequestRecord._();
  factory HomeRequestRecord([void Function(HomeRequestRecordBuilder) updates]) =
      _$HomeRequestRecord;

  static HomeRequestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHomeRequestRecordData({
  String rooms,
  String moreDetails,
  DocumentReference requestUser,
  String budgetAmount,
  DateTime time,
}) =>
    serializers.toFirestore(
        HomeRequestRecord.serializer,
        HomeRequestRecord((h) => h
          ..rooms = rooms
          ..moreDetails = moreDetails
          ..requestUser = requestUser
          ..budgetAmount = budgetAmount
          ..time = time));
