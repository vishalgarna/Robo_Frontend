// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderDetailsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  String? get orderType => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  int? get volume => throw _privateConstructorUsedError;
  int? get stopLoss => throw _privateConstructorUsedError;
  int? get takeProfit => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {String? orderType,
      String? symbol,
      int? volume,
      int? stopLoss,
      int? takeProfit});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = freezed,
    Object? symbol = freezed,
    Object? volume = freezed,
    Object? stopLoss = freezed,
    Object? takeProfit = freezed,
  }) {
    return _then(_value.copyWith(
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      stopLoss: freezed == stopLoss
          ? _value.stopLoss
          : stopLoss // ignore: cast_nullable_to_non_nullable
              as int?,
      takeProfit: freezed == takeProfit
          ? _value.takeProfit
          : takeProfit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderType,
      String? symbol,
      int? volume,
      int? stopLoss,
      int? takeProfit});
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = freezed,
    Object? symbol = freezed,
    Object? volume = freezed,
    Object? stopLoss = freezed,
    Object? takeProfit = freezed,
  }) {
    return _then(_$OrderDetailsModelImpl(
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      stopLoss: freezed == stopLoss
          ? _value.stopLoss
          : stopLoss // ignore: cast_nullable_to_non_nullable
              as int?,
      takeProfit: freezed == takeProfit
          ? _value.takeProfit
          : takeProfit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {required this.orderType,
      required this.symbol,
      required this.volume,
      required this.stopLoss,
      required this.takeProfit});

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  final String? orderType;
  @override
  final String? symbol;
  @override
  final int? volume;
  @override
  final int? stopLoss;
  @override
  final int? takeProfit;

  @override
  String toString() {
    return 'OrderDetailsModel(orderType: $orderType, symbol: $symbol, volume: $volume, stopLoss: $stopLoss, takeProfit: $takeProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.stopLoss, stopLoss) ||
                other.stopLoss == stopLoss) &&
            (identical(other.takeProfit, takeProfit) ||
                other.takeProfit == takeProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderType, symbol, volume, stopLoss, takeProfit);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  factory _OrderDetailsModel(
      {required final String? orderType,
      required final String? symbol,
      required final int? volume,
      required final int? stopLoss,
      required final int? takeProfit}) = _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  String? get orderType;
  @override
  String? get symbol;
  @override
  int? get volume;
  @override
  int? get stopLoss;
  @override
  int? get takeProfit;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
