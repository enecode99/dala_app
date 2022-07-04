// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dala_ads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DalaAdsRecord> _$dalaAdsRecordSerializer =
    new _$DalaAdsRecordSerializer();

class _$DalaAdsRecordSerializer implements StructuredSerializer<DalaAdsRecord> {
  @override
  final Iterable<Type> types = const [DalaAdsRecord, _$DalaAdsRecord];
  @override
  final String wireName = 'DalaAdsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DalaAdsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  DalaAdsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DalaAdsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$DalaAdsRecord extends DalaAdsRecord {
  @override
  final String image;
  @override
  final DateTime time;
  @override
  final DocumentReference<Object> reference;

  factory _$DalaAdsRecord([void Function(DalaAdsRecordBuilder) updates]) =>
      (new DalaAdsRecordBuilder()..update(updates)).build();

  _$DalaAdsRecord._({this.image, this.time, this.reference}) : super._();

  @override
  DalaAdsRecord rebuild(void Function(DalaAdsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DalaAdsRecordBuilder toBuilder() => new DalaAdsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DalaAdsRecord &&
        image == other.image &&
        time == other.time &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, image.hashCode), time.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DalaAdsRecord')
          ..add('image', image)
          ..add('time', time)
          ..add('reference', reference))
        .toString();
  }
}

class DalaAdsRecordBuilder
    implements Builder<DalaAdsRecord, DalaAdsRecordBuilder> {
  _$DalaAdsRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DalaAdsRecordBuilder() {
    DalaAdsRecord._initializeBuilder(this);
  }

  DalaAdsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _time = $v.time;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DalaAdsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DalaAdsRecord;
  }

  @override
  void update(void Function(DalaAdsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DalaAdsRecord build() {
    final _$result = _$v ??
        new _$DalaAdsRecord._(image: image, time: time, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
