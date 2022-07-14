import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_files_record.g.dart';

abstract class UserFilesRecord
    implements Built<UserFilesRecord, UserFilesRecordBuilder> {
  static Serializer<UserFilesRecord> get serializer =>
      _$userFilesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_name')
  String get userName;

  @nullable
  @BuiltValueField(wireName: 'employment_status')
  String get employmentStatus;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'monthly_income')
  String get monthlyIncome;

  @nullable
  @BuiltValueField(wireName: 'title_deed')
  String get titleDeed;

  @nullable
  @BuiltValueField(wireName: 'time_duration')
  String get timeDuration;

  @nullable
  @BuiltValueField(wireName: 'current_time')
  DateTime get currentTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserFilesRecordBuilder builder) => builder
    ..userName = ''
    ..employmentStatus = ''
    ..monthlyIncome = ''
    ..titleDeed = ''
    ..timeDuration = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_files');

  static Stream<UserFilesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserFilesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserFilesRecord._();
  factory UserFilesRecord([void Function(UserFilesRecordBuilder) updates]) =
      _$UserFilesRecord;

  static UserFilesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserFilesRecordData({
  String userName,
  String employmentStatus,
  DocumentReference user,
  String monthlyIncome,
  String titleDeed,
  String timeDuration,
  DateTime currentTime,
}) =>
    serializers.toFirestore(
        UserFilesRecord.serializer,
        UserFilesRecord((u) => u
          ..userName = userName
          ..employmentStatus = employmentStatus
          ..user = user
          ..monthlyIncome = monthlyIncome
          ..titleDeed = titleDeed
          ..timeDuration = timeDuration
          ..currentTime = currentTime));
