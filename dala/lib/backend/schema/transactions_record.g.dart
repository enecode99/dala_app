// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.transactionDate;
    if (value != null) {
      result
        ..add('transaction_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.transactionUser;
    if (value != null) {
      result
        ..add('transaction_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.transactionPrice;
    if (value != null) {
      result
        ..add('transaction_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.completedTransaction;
    if (value != null) {
      result
        ..add('completed_transaction')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.transactionPhone;
    if (value != null) {
      result
        ..add('transaction_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileMoney;
    if (value != null) {
      result
        ..add('mobile_money')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refund;
    if (value != null) {
      result
        ..add('refund')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'transaction_date':
          result.transactionDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'transaction_user':
          result.transactionUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'transaction_price':
          result.transactionPrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'completed_transaction':
          result.completedTransaction = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'transaction_phone':
          result.transactionPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_money':
          result.mobileMoney = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refund':
          result.refund = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final DateTime transactionDate;
  @override
  final DocumentReference<Object> transactionUser;
  @override
  final String transactionPrice;
  @override
  final bool completedTransaction;
  @override
  final String transactionPhone;
  @override
  final String mobileMoney;
  @override
  final bool refund;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =>
      (new TransactionsRecordBuilder()..update(updates)).build();

  _$TransactionsRecord._(
      {this.transactionDate,
      this.transactionUser,
      this.transactionPrice,
      this.completedTransaction,
      this.transactionPhone,
      this.mobileMoney,
      this.refund,
      this.reference})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        transactionDate == other.transactionDate &&
        transactionUser == other.transactionUser &&
        transactionPrice == other.transactionPrice &&
        completedTransaction == other.completedTransaction &&
        transactionPhone == other.transactionPhone &&
        mobileMoney == other.mobileMoney &&
        refund == other.refund &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, transactionDate.hashCode),
                                transactionUser.hashCode),
                            transactionPrice.hashCode),
                        completedTransaction.hashCode),
                    transactionPhone.hashCode),
                mobileMoney.hashCode),
            refund.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionsRecord')
          ..add('transactionDate', transactionDate)
          ..add('transactionUser', transactionUser)
          ..add('transactionPrice', transactionPrice)
          ..add('completedTransaction', completedTransaction)
          ..add('transactionPhone', transactionPhone)
          ..add('mobileMoney', mobileMoney)
          ..add('refund', refund)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord _$v;

  DateTime _transactionDate;
  DateTime get transactionDate => _$this._transactionDate;
  set transactionDate(DateTime transactionDate) =>
      _$this._transactionDate = transactionDate;

  DocumentReference<Object> _transactionUser;
  DocumentReference<Object> get transactionUser => _$this._transactionUser;
  set transactionUser(DocumentReference<Object> transactionUser) =>
      _$this._transactionUser = transactionUser;

  String _transactionPrice;
  String get transactionPrice => _$this._transactionPrice;
  set transactionPrice(String transactionPrice) =>
      _$this._transactionPrice = transactionPrice;

  bool _completedTransaction;
  bool get completedTransaction => _$this._completedTransaction;
  set completedTransaction(bool completedTransaction) =>
      _$this._completedTransaction = completedTransaction;

  String _transactionPhone;
  String get transactionPhone => _$this._transactionPhone;
  set transactionPhone(String transactionPhone) =>
      _$this._transactionPhone = transactionPhone;

  String _mobileMoney;
  String get mobileMoney => _$this._mobileMoney;
  set mobileMoney(String mobileMoney) => _$this._mobileMoney = mobileMoney;

  bool _refund;
  bool get refund => _$this._refund;
  set refund(bool refund) => _$this._refund = refund;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionDate = $v.transactionDate;
      _transactionUser = $v.transactionUser;
      _transactionPrice = $v.transactionPrice;
      _completedTransaction = $v.completedTransaction;
      _transactionPhone = $v.transactionPhone;
      _mobileMoney = $v.mobileMoney;
      _refund = $v.refund;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionsRecord build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            transactionDate: transactionDate,
            transactionUser: transactionUser,
            transactionPrice: transactionPrice,
            completedTransaction: completedTransaction,
            transactionPhone: transactionPhone,
            mobileMoney: mobileMoney,
            refund: refund,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
