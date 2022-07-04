import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dala_ads_record.g.dart';

abstract class DalaAdsRecord
    implements Built<DalaAdsRecord, DalaAdsRecordBuilder> {
  static Serializer<DalaAdsRecord> get serializer => _$dalaAdsRecordSerializer;

  @nullable
  String get image;

  @nullable
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DalaAdsRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dala_ads');

  static Stream<DalaAdsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DalaAdsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DalaAdsRecord._();
  factory DalaAdsRecord([void Function(DalaAdsRecordBuilder) updates]) =
      _$DalaAdsRecord;

  static DalaAdsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDalaAdsRecordData({
  String image,
  DateTime time,
}) =>
    serializers.toFirestore(
        DalaAdsRecord.serializer,
        DalaAdsRecord((d) => d
          ..image = image
          ..time = time));
