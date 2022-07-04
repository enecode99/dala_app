// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HouseRecord> _$houseRecordSerializer = new _$HouseRecordSerializer();

class _$HouseRecordSerializer implements StructuredSerializer<HouseRecord> {
  @override
  final Iterable<Type> types = const [HouseRecord, _$HouseRecord];
  @override
  final String wireName = 'HouseRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HouseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.houseName;
    if (value != null) {
      result
        ..add('house_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseImages;
    if (value != null) {
      result
        ..add('house_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.houseVideo;
    if (value != null) {
      result
        ..add('house_video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseInformation;
    if (value != null) {
      result
        ..add('house_information')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.housePrice;
    if (value != null) {
      result
        ..add('house_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.housePhoto;
    if (value != null) {
      result
        ..add('house_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseBuilder;
    if (value != null) {
      result
        ..add('house_builder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.houseBuyer;
    if (value != null) {
      result
        ..add('house_buyer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.houseFavorite;
    if (value != null) {
      result
        ..add('house_favorite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.houseAnonimity;
    if (value != null) {
      result
        ..add('house_anonimity')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.requestUser;
    if (value != null) {
      result
        ..add('request_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.housePlan;
    if (value != null) {
      result
        ..add('house_plan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.houseOffer;
    if (value != null) {
      result
        ..add('house_offer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseRenovation;
    if (value != null) {
      result
        ..add('house_renovation')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.houseSell;
    if (value != null) {
      result
        ..add('house_sell')
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
  HouseRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HouseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'house_name':
          result.houseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_images':
          result.houseImages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'house_video':
          result.houseVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_information':
          result.houseInformation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_price':
          result.housePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'house_photo':
          result.housePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_builder':
          result.houseBuilder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'house_buyer':
          result.houseBuyer.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'house_favorite':
          result.houseFavorite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'house_anonimity':
          result.houseAnonimity = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'request_user':
          result.requestUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'house_plan':
          result.housePlan.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'house_offer':
          result.houseOffer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'house_renovation':
          result.houseRenovation = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'house_sell':
          result.houseSell = serializers.deserialize(value,
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

class _$HouseRecord extends HouseRecord {
  @override
  final String houseName;
  @override
  final BuiltList<String> houseImages;
  @override
  final String houseVideo;
  @override
  final String houseInformation;
  @override
  final int housePrice;
  @override
  final String housePhoto;
  @override
  final DocumentReference<Object> houseBuilder;
  @override
  final BuiltList<DocumentReference<Object>> houseBuyer;
  @override
  final BuiltList<DocumentReference<Object>> houseFavorite;
  @override
  final bool houseAnonimity;
  @override
  final DocumentReference<Object> requestUser;
  @override
  final BuiltList<DocumentReference<Object>> housePlan;
  @override
  final String houseOffer;
  @override
  final bool houseRenovation;
  @override
  final bool houseSell;
  @override
  final DocumentReference<Object> reference;

  factory _$HouseRecord([void Function(HouseRecordBuilder) updates]) =>
      (new HouseRecordBuilder()..update(updates)).build();

  _$HouseRecord._(
      {this.houseName,
      this.houseImages,
      this.houseVideo,
      this.houseInformation,
      this.housePrice,
      this.housePhoto,
      this.houseBuilder,
      this.houseBuyer,
      this.houseFavorite,
      this.houseAnonimity,
      this.requestUser,
      this.housePlan,
      this.houseOffer,
      this.houseRenovation,
      this.houseSell,
      this.reference})
      : super._();

  @override
  HouseRecord rebuild(void Function(HouseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HouseRecordBuilder toBuilder() => new HouseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HouseRecord &&
        houseName == other.houseName &&
        houseImages == other.houseImages &&
        houseVideo == other.houseVideo &&
        houseInformation == other.houseInformation &&
        housePrice == other.housePrice &&
        housePhoto == other.housePhoto &&
        houseBuilder == other.houseBuilder &&
        houseBuyer == other.houseBuyer &&
        houseFavorite == other.houseFavorite &&
        houseAnonimity == other.houseAnonimity &&
        requestUser == other.requestUser &&
        housePlan == other.housePlan &&
        houseOffer == other.houseOffer &&
        houseRenovation == other.houseRenovation &&
        houseSell == other.houseSell &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    houseName
                                                                        .hashCode),
                                                                houseImages
                                                                    .hashCode),
                                                            houseVideo
                                                                .hashCode),
                                                        houseInformation
                                                            .hashCode),
                                                    housePrice.hashCode),
                                                housePhoto.hashCode),
                                            houseBuilder.hashCode),
                                        houseBuyer.hashCode),
                                    houseFavorite.hashCode),
                                houseAnonimity.hashCode),
                            requestUser.hashCode),
                        housePlan.hashCode),
                    houseOffer.hashCode),
                houseRenovation.hashCode),
            houseSell.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HouseRecord')
          ..add('houseName', houseName)
          ..add('houseImages', houseImages)
          ..add('houseVideo', houseVideo)
          ..add('houseInformation', houseInformation)
          ..add('housePrice', housePrice)
          ..add('housePhoto', housePhoto)
          ..add('houseBuilder', houseBuilder)
          ..add('houseBuyer', houseBuyer)
          ..add('houseFavorite', houseFavorite)
          ..add('houseAnonimity', houseAnonimity)
          ..add('requestUser', requestUser)
          ..add('housePlan', housePlan)
          ..add('houseOffer', houseOffer)
          ..add('houseRenovation', houseRenovation)
          ..add('houseSell', houseSell)
          ..add('reference', reference))
        .toString();
  }
}

class HouseRecordBuilder implements Builder<HouseRecord, HouseRecordBuilder> {
  _$HouseRecord _$v;

  String _houseName;
  String get houseName => _$this._houseName;
  set houseName(String houseName) => _$this._houseName = houseName;

  ListBuilder<String> _houseImages;
  ListBuilder<String> get houseImages =>
      _$this._houseImages ??= new ListBuilder<String>();
  set houseImages(ListBuilder<String> houseImages) =>
      _$this._houseImages = houseImages;

  String _houseVideo;
  String get houseVideo => _$this._houseVideo;
  set houseVideo(String houseVideo) => _$this._houseVideo = houseVideo;

  String _houseInformation;
  String get houseInformation => _$this._houseInformation;
  set houseInformation(String houseInformation) =>
      _$this._houseInformation = houseInformation;

  int _housePrice;
  int get housePrice => _$this._housePrice;
  set housePrice(int housePrice) => _$this._housePrice = housePrice;

  String _housePhoto;
  String get housePhoto => _$this._housePhoto;
  set housePhoto(String housePhoto) => _$this._housePhoto = housePhoto;

  DocumentReference<Object> _houseBuilder;
  DocumentReference<Object> get houseBuilder => _$this._houseBuilder;
  set houseBuilder(DocumentReference<Object> houseBuilder) =>
      _$this._houseBuilder = houseBuilder;

  ListBuilder<DocumentReference<Object>> _houseBuyer;
  ListBuilder<DocumentReference<Object>> get houseBuyer =>
      _$this._houseBuyer ??= new ListBuilder<DocumentReference<Object>>();
  set houseBuyer(ListBuilder<DocumentReference<Object>> houseBuyer) =>
      _$this._houseBuyer = houseBuyer;

  ListBuilder<DocumentReference<Object>> _houseFavorite;
  ListBuilder<DocumentReference<Object>> get houseFavorite =>
      _$this._houseFavorite ??= new ListBuilder<DocumentReference<Object>>();
  set houseFavorite(ListBuilder<DocumentReference<Object>> houseFavorite) =>
      _$this._houseFavorite = houseFavorite;

  bool _houseAnonimity;
  bool get houseAnonimity => _$this._houseAnonimity;
  set houseAnonimity(bool houseAnonimity) =>
      _$this._houseAnonimity = houseAnonimity;

  DocumentReference<Object> _requestUser;
  DocumentReference<Object> get requestUser => _$this._requestUser;
  set requestUser(DocumentReference<Object> requestUser) =>
      _$this._requestUser = requestUser;

  ListBuilder<DocumentReference<Object>> _housePlan;
  ListBuilder<DocumentReference<Object>> get housePlan =>
      _$this._housePlan ??= new ListBuilder<DocumentReference<Object>>();
  set housePlan(ListBuilder<DocumentReference<Object>> housePlan) =>
      _$this._housePlan = housePlan;

  String _houseOffer;
  String get houseOffer => _$this._houseOffer;
  set houseOffer(String houseOffer) => _$this._houseOffer = houseOffer;

  bool _houseRenovation;
  bool get houseRenovation => _$this._houseRenovation;
  set houseRenovation(bool houseRenovation) =>
      _$this._houseRenovation = houseRenovation;

  bool _houseSell;
  bool get houseSell => _$this._houseSell;
  set houseSell(bool houseSell) => _$this._houseSell = houseSell;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HouseRecordBuilder() {
    HouseRecord._initializeBuilder(this);
  }

  HouseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _houseName = $v.houseName;
      _houseImages = $v.houseImages?.toBuilder();
      _houseVideo = $v.houseVideo;
      _houseInformation = $v.houseInformation;
      _housePrice = $v.housePrice;
      _housePhoto = $v.housePhoto;
      _houseBuilder = $v.houseBuilder;
      _houseBuyer = $v.houseBuyer?.toBuilder();
      _houseFavorite = $v.houseFavorite?.toBuilder();
      _houseAnonimity = $v.houseAnonimity;
      _requestUser = $v.requestUser;
      _housePlan = $v.housePlan?.toBuilder();
      _houseOffer = $v.houseOffer;
      _houseRenovation = $v.houseRenovation;
      _houseSell = $v.houseSell;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HouseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HouseRecord;
  }

  @override
  void update(void Function(HouseRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HouseRecord build() {
    _$HouseRecord _$result;
    try {
      _$result = _$v ??
          new _$HouseRecord._(
              houseName: houseName,
              houseImages: _houseImages?.build(),
              houseVideo: houseVideo,
              houseInformation: houseInformation,
              housePrice: housePrice,
              housePhoto: housePhoto,
              houseBuilder: houseBuilder,
              houseBuyer: _houseBuyer?.build(),
              houseFavorite: _houseFavorite?.build(),
              houseAnonimity: houseAnonimity,
              requestUser: requestUser,
              housePlan: _housePlan?.build(),
              houseOffer: houseOffer,
              houseRenovation: houseRenovation,
              houseSell: houseSell,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'houseImages';
        _houseImages?.build();

        _$failedField = 'houseBuyer';
        _houseBuyer?.build();
        _$failedField = 'houseFavorite';
        _houseFavorite?.build();

        _$failedField = 'housePlan';
        _housePlan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HouseRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
