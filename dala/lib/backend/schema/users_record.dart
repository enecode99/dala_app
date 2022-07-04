import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'business_admin')
  bool get businessAdmin;

  @nullable
  String get email;

  @nullable
  DocumentReference get house;

  @nullable
  DocumentReference get transaction;

  @nullable
  @BuiltValueField(wireName: 'user_plan')
  DocumentReference get userPlan;

  @nullable
  @BuiltValueField(wireName: 'plan_available')
  bool get planAvailable;

  @nullable
  bool get renovation;

  @nullable
  @BuiltValueField(wireName: 'owner_admin')
  bool get ownerAdmin;

  @nullable
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: 'tip_info')
  String get tipInfo;

  @nullable
  @BuiltValueField(wireName: 'house_standard')
  String get houseStandard;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..businessAdmin = false
    ..email = ''
    ..planAvailable = false
    ..renovation = false
    ..ownerAdmin = false
    ..tipInfo = ''
    ..houseStandard = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  bool businessAdmin,
  String email,
  DocumentReference house,
  DocumentReference transaction,
  DocumentReference userPlan,
  bool planAvailable,
  bool renovation,
  bool ownerAdmin,
  DateTime time,
  String tipInfo,
  String houseStandard,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..businessAdmin = businessAdmin
          ..email = email
          ..house = house
          ..transaction = transaction
          ..userPlan = userPlan
          ..planAvailable = planAvailable
          ..renovation = renovation
          ..ownerAdmin = ownerAdmin
          ..time = time
          ..tipInfo = tipInfo
          ..houseStandard = houseStandard));
