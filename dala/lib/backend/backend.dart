import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/house_record.dart';
import 'schema/house_plans_record.dart';
import 'schema/finnish_construction_record.dart';
import 'schema/dala_ads_record.dart';
import 'schema/transactions_record.dart';
import 'schema/mortgage_request_record.dart';
import 'schema/home_request_record.dart';
import 'schema/premium_card_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/house_record.dart';
export 'schema/house_plans_record.dart';
export 'schema/finnish_construction_record.dart';
export 'schema/dala_ads_record.dart';
export 'schema/transactions_record.dart';
export 'schema/mortgage_request_record.dart';
export 'schema/home_request_record.dart';
export 'schema/premium_card_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UsersRecord>> queryUsersRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HouseRecords (as a Stream and as a Future).
Stream<List<HouseRecord>> queryHouseRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HouseRecord.collection,
      HouseRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HouseRecord>> queryHouseRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HouseRecord.collection,
      HouseRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HouseRecord>> queryHouseRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      HouseRecord.collection,
      HouseRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HousePlansRecords (as a Stream and as a Future).
Stream<List<HousePlansRecord>> queryHousePlansRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HousePlansRecord.collection,
      HousePlansRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HousePlansRecord>> queryHousePlansRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HousePlansRecord.collection,
      HousePlansRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HousePlansRecord>> queryHousePlansRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      HousePlansRecord.collection,
      HousePlansRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query FinnishConstructionRecords (as a Stream and as a Future).
Stream<List<FinnishConstructionRecord>> queryFinnishConstructionRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FinnishConstructionRecord.collection,
      FinnishConstructionRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FinnishConstructionRecord>> queryFinnishConstructionRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FinnishConstructionRecord.collection,
      FinnishConstructionRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<FinnishConstructionRecord>>
    queryFinnishConstructionRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
        queryCollectionPage(
          FinnishConstructionRecord.collection,
          FinnishConstructionRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query DalaAdsRecords (as a Stream and as a Future).
Stream<List<DalaAdsRecord>> queryDalaAdsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DalaAdsRecord.collection,
      DalaAdsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DalaAdsRecord>> queryDalaAdsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DalaAdsRecord.collection,
      DalaAdsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<DalaAdsRecord>> queryDalaAdsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      DalaAdsRecord.collection,
      DalaAdsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query TransactionsRecords (as a Stream and as a Future).
Stream<List<TransactionsRecord>> queryTransactionsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TransactionsRecord.collection,
      TransactionsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TransactionsRecord>> queryTransactionsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TransactionsRecord.collection,
      TransactionsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<TransactionsRecord>> queryTransactionsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      TransactionsRecord.collection,
      TransactionsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query MortgageRequestRecords (as a Stream and as a Future).
Stream<List<MortgageRequestRecord>> queryMortgageRequestRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MortgageRequestRecord.collection,
      MortgageRequestRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MortgageRequestRecord>> queryMortgageRequestRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MortgageRequestRecord.collection,
      MortgageRequestRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<MortgageRequestRecord>> queryMortgageRequestRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      MortgageRequestRecord.collection,
      MortgageRequestRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HomeRequestRecords (as a Stream and as a Future).
Stream<List<HomeRequestRecord>> queryHomeRequestRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HomeRequestRecord.collection,
      HomeRequestRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HomeRequestRecord>> queryHomeRequestRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HomeRequestRecord.collection,
      HomeRequestRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HomeRequestRecord>> queryHomeRequestRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      HomeRequestRecord.collection,
      HomeRequestRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query PremiumCardRecords (as a Stream and as a Future).
Stream<List<PremiumCardRecord>> queryPremiumCardRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PremiumCardRecord.collection,
      PremiumCardRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PremiumCardRecord>> queryPremiumCardRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PremiumCardRecord.collection,
      PremiumCardRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<PremiumCardRecord>> queryPremiumCardRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      PremiumCardRecord.collection,
      PremiumCardRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>> dataStream;
  final QueryDocumentSnapshot nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot> docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
