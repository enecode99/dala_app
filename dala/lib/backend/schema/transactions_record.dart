import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'transaction_date')
  DateTime get transactionDate;

  @nullable
  @BuiltValueField(wireName: 'transaction_user')
  DocumentReference get transactionUser;

  @nullable
  @BuiltValueField(wireName: 'transaction_price')
  String get transactionPrice;

  @nullable
  @BuiltValueField(wireName: 'completed_transaction')
  bool get completedTransaction;

  @nullable
  @BuiltValueField(wireName: 'transaction_phone')
  String get transactionPhone;

  @nullable
  @BuiltValueField(wireName: 'mobile_money')
  String get mobileMoney;

  @nullable
  bool get refund;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..transactionPrice = ''
    ..completedTransaction = false
    ..transactionPhone = ''
    ..mobileMoney = ''
    ..refund = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionsRecordData({
  DateTime transactionDate,
  DocumentReference transactionUser,
  String transactionPrice,
  bool completedTransaction,
  String transactionPhone,
  String mobileMoney,
  bool refund,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..transactionDate = transactionDate
          ..transactionUser = transactionUser
          ..transactionPrice = transactionPrice
          ..completedTransaction = completedTransaction
          ..transactionPhone = transactionPhone
          ..mobileMoney = mobileMoney
          ..refund = refund));
