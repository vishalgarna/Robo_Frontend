// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backTestingModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BackTestingModel _$BackTestingModelFromJson(Map<String, dynamic> json) {
  return _BackTestingModel.fromJson(json);
}

/// @nodoc
mixin _$BackTestingModel {
  int get afterTrade => throw _privateConstructorUsedError;
  int get investedAmount => throw _privateConstructorUsedError;
  Map<String, TradeData?>? get resultBacktesPairs =>
      throw _privateConstructorUsedError;

  /// Serializes this BackTestingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackTestingModelCopyWith<BackTestingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackTestingModelCopyWith<$Res> {
  factory $BackTestingModelCopyWith(
          BackTestingModel value, $Res Function(BackTestingModel) then) =
      _$BackTestingModelCopyWithImpl<$Res, BackTestingModel>;
  @useResult
  $Res call(
      {int afterTrade,
      int investedAmount,
      Map<String, TradeData?>? resultBacktesPairs});
}

/// @nodoc
class _$BackTestingModelCopyWithImpl<$Res, $Val extends BackTestingModel>
    implements $BackTestingModelCopyWith<$Res> {
  _$BackTestingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? afterTrade = null,
    Object? investedAmount = null,
    Object? resultBacktesPairs = freezed,
  }) {
    return _then(_value.copyWith(
      afterTrade: null == afterTrade
          ? _value.afterTrade
          : afterTrade // ignore: cast_nullable_to_non_nullable
              as int,
      investedAmount: null == investedAmount
          ? _value.investedAmount
          : investedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      resultBacktesPairs: freezed == resultBacktesPairs
          ? _value.resultBacktesPairs
          : resultBacktesPairs // ignore: cast_nullable_to_non_nullable
              as Map<String, TradeData?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackTestingModelImplCopyWith<$Res>
    implements $BackTestingModelCopyWith<$Res> {
  factory _$$BackTestingModelImplCopyWith(_$BackTestingModelImpl value,
          $Res Function(_$BackTestingModelImpl) then) =
      __$$BackTestingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int afterTrade,
      int investedAmount,
      Map<String, TradeData?>? resultBacktesPairs});
}

/// @nodoc
class __$$BackTestingModelImplCopyWithImpl<$Res>
    extends _$BackTestingModelCopyWithImpl<$Res, _$BackTestingModelImpl>
    implements _$$BackTestingModelImplCopyWith<$Res> {
  __$$BackTestingModelImplCopyWithImpl(_$BackTestingModelImpl _value,
      $Res Function(_$BackTestingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? afterTrade = null,
    Object? investedAmount = null,
    Object? resultBacktesPairs = freezed,
  }) {
    return _then(_$BackTestingModelImpl(
      afterTrade: null == afterTrade
          ? _value.afterTrade
          : afterTrade // ignore: cast_nullable_to_non_nullable
              as int,
      investedAmount: null == investedAmount
          ? _value.investedAmount
          : investedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      resultBacktesPairs: freezed == resultBacktesPairs
          ? _value._resultBacktesPairs
          : resultBacktesPairs // ignore: cast_nullable_to_non_nullable
              as Map<String, TradeData?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackTestingModelImpl implements _BackTestingModel {
  _$BackTestingModelImpl(
      {required this.afterTrade,
      required this.investedAmount,
      required final Map<String, TradeData?>? resultBacktesPairs})
      : _resultBacktesPairs = resultBacktesPairs;

  factory _$BackTestingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackTestingModelImplFromJson(json);

  @override
  final int afterTrade;
  @override
  final int investedAmount;
  final Map<String, TradeData?>? _resultBacktesPairs;
  @override
  Map<String, TradeData?>? get resultBacktesPairs {
    final value = _resultBacktesPairs;
    if (value == null) return null;
    if (_resultBacktesPairs is EqualUnmodifiableMapView)
      return _resultBacktesPairs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BackTestingModel(afterTrade: $afterTrade, investedAmount: $investedAmount, resultBacktesPairs: $resultBacktesPairs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackTestingModelImpl &&
            (identical(other.afterTrade, afterTrade) ||
                other.afterTrade == afterTrade) &&
            (identical(other.investedAmount, investedAmount) ||
                other.investedAmount == investedAmount) &&
            const DeepCollectionEquality()
                .equals(other._resultBacktesPairs, _resultBacktesPairs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, afterTrade, investedAmount,
      const DeepCollectionEquality().hash(_resultBacktesPairs));

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackTestingModelImplCopyWith<_$BackTestingModelImpl> get copyWith =>
      __$$BackTestingModelImplCopyWithImpl<_$BackTestingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackTestingModelImplToJson(
      this,
    );
  }
}

abstract class _BackTestingModel implements BackTestingModel {
  factory _BackTestingModel(
          {required final int afterTrade,
          required final int investedAmount,
          required final Map<String, TradeData?>? resultBacktesPairs}) =
      _$BackTestingModelImpl;

  factory _BackTestingModel.fromJson(Map<String, dynamic> json) =
      _$BackTestingModelImpl.fromJson;

  @override
  int get afterTrade;
  @override
  int get investedAmount;
  @override
  Map<String, TradeData?>? get resultBacktesPairs;

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackTestingModelImplCopyWith<_$BackTestingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeData _$TradeDataFromJson(Map<String, dynamic> json) {
  return _TradeData.fromJson(json);
}

/// @nodoc
mixin _$TradeData {
  int get afterTrade => throw _privateConstructorUsedError;
  int get slHit => throw _privateConstructorUsedError;
  int get tpHit => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;

  /// Serializes this TradeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeDataCopyWith<TradeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeDataCopyWith<$Res> {
  factory $TradeDataCopyWith(TradeData value, $Res Function(TradeData) then) =
      _$TradeDataCopyWithImpl<$Res, TradeData>;
  @useResult
  $Res call({int afterTrade, int slHit, int tpHit, int totalTrades});
}

/// @nodoc
class _$TradeDataCopyWithImpl<$Res, $Val extends TradeData>
    implements $TradeDataCopyWith<$Res> {
  _$TradeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? afterTrade = null,
    Object? slHit = null,
    Object? tpHit = null,
    Object? totalTrades = null,
  }) {
    return _then(_value.copyWith(
      afterTrade: null == afterTrade
          ? _value.afterTrade
          : afterTrade // ignore: cast_nullable_to_non_nullable
              as int,
      slHit: null == slHit
          ? _value.slHit
          : slHit // ignore: cast_nullable_to_non_nullable
              as int,
      tpHit: null == tpHit
          ? _value.tpHit
          : tpHit // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeDataImplCopyWith<$Res>
    implements $TradeDataCopyWith<$Res> {
  factory _$$TradeDataImplCopyWith(
          _$TradeDataImpl value, $Res Function(_$TradeDataImpl) then) =
      __$$TradeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int afterTrade, int slHit, int tpHit, int totalTrades});
}

/// @nodoc
class __$$TradeDataImplCopyWithImpl<$Res>
    extends _$TradeDataCopyWithImpl<$Res, _$TradeDataImpl>
    implements _$$TradeDataImplCopyWith<$Res> {
  __$$TradeDataImplCopyWithImpl(
      _$TradeDataImpl _value, $Res Function(_$TradeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? afterTrade = null,
    Object? slHit = null,
    Object? tpHit = null,
    Object? totalTrades = null,
  }) {
    return _then(_$TradeDataImpl(
      afterTrade: null == afterTrade
          ? _value.afterTrade
          : afterTrade // ignore: cast_nullable_to_non_nullable
              as int,
      slHit: null == slHit
          ? _value.slHit
          : slHit // ignore: cast_nullable_to_non_nullable
              as int,
      tpHit: null == tpHit
          ? _value.tpHit
          : tpHit // ignore: cast_nullable_to_non_nullable
              as int,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeDataImpl implements _TradeData {
  _$TradeDataImpl(
      {required this.afterTrade,
      required this.slHit,
      required this.tpHit,
      required this.totalTrades});

  factory _$TradeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeDataImplFromJson(json);

  @override
  final int afterTrade;
  @override
  final int slHit;
  @override
  final int tpHit;
  @override
  final int totalTrades;

  @override
  String toString() {
    return 'TradeData(afterTrade: $afterTrade, slHit: $slHit, tpHit: $tpHit, totalTrades: $totalTrades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeDataImpl &&
            (identical(other.afterTrade, afterTrade) ||
                other.afterTrade == afterTrade) &&
            (identical(other.slHit, slHit) || other.slHit == slHit) &&
            (identical(other.tpHit, tpHit) || other.tpHit == tpHit) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, afterTrade, slHit, tpHit, totalTrades);

  /// Create a copy of TradeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeDataImplCopyWith<_$TradeDataImpl> get copyWith =>
      __$$TradeDataImplCopyWithImpl<_$TradeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeDataImplToJson(
      this,
    );
  }
}

abstract class _TradeData implements TradeData {
  factory _TradeData(
      {required final int afterTrade,
      required final int slHit,
      required final int tpHit,
      required final int totalTrades}) = _$TradeDataImpl;

  factory _TradeData.fromJson(Map<String, dynamic> json) =
      _$TradeDataImpl.fromJson;

  @override
  int get afterTrade;
  @override
  int get slHit;
  @override
  int get tpHit;
  @override
  int get totalTrades;

  /// Create a copy of TradeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeDataImplCopyWith<_$TradeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
