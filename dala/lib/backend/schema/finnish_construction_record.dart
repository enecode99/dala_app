import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'finnish_construction_record.g.dart';

abstract class FinnishConstructionRecord
    implements
        Built<FinnishConstructionRecord, FinnishConstructionRecordBuilder> {
  static Serializer<FinnishConstructionRecord> get serializer =>
      _$finnishConstructionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'estimated_cost')
  int get estimatedCost;

  @nullable
  @BuiltValueField(wireName: 'remain_cost')
  int get remainCost;

  @nullable
  @BuiltValueField(wireName: 'construction_location')
  String get constructionLocation;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FinnishConstructionRecordBuilder builder) =>
      builder
        ..estimatedCost = 0
        ..remainCost = 0
        ..constructionLocation = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('finnish_construction');

  static Stream<FinnishConstructionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FinnishConstructionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  FinnishConstructionRecord._();
  factory FinnishConstructionRecord(
          [void Function(FinnishConstructionRecordBuilder) updates]) =
      _$FinnishConstructionRecord;

  static FinnishConstructionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFinnishConstructionRecordData({
  int estimatedCost,
  int remainCost,
  String constructionLocation,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        FinnishConstructionRecord.serializer,
        FinnishConstructionRecord((f) => f
          ..estimatedCost = estimatedCost
          ..remainCost = remainCost
          ..constructionLocation = constructionLocation
          ..user = user));
