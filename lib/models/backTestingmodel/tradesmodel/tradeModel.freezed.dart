// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tradeModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeModel _$TradeModelFromJson(Map<String, dynamic> json) {
  return _TradeModel.fromJson(json);
}

/// @nodoc
mixin _$TradeModel {
  String get entryTime => throw _privateConstructorUsedError;
  String get entryPrice => throw _privateConstructorUsedError;
  String get exitTime => throw _privateConstructorUsedError;
  String get profit => throw _privateConstructorUsedError;

  /// Serializes this TradeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeModelCopyWith<TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeModelCopyWith<$Res> {
  factory $TradeModelCopyWith(
          TradeModel value, $Res Function(TradeModel) then) =
      _$TradeModelCopyWithImpl<$Res, TradeModel>;
  @useResult
  $Res call(
      {String entryTime, String entryPrice, String exitTime, String profit});
}

/// @nodoc
class _$TradeModelCopyWithImpl<$Res, $Val extends TradeModel>
    implements $TradeModelCopyWith<$Res> {
  _$TradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? entryPrice = null,
    Object? exitTime = null,
    Object? profit = null,
  }) {
    return _then(_value.copyWith(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as String,
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as String,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeModelImplCopyWith<$Res>
    implements $TradeModelCopyWith<$Res> {
  factory _$$TradeModelImplCopyWith(
          _$TradeModelImpl value, $Res Function(_$TradeModelImpl) then) =
      __$$TradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String entryTime, String entryPrice, String exitTime, String profit});
}

/// @nodoc
class __$$TradeModelImplCopyWithImpl<$Res>
    extends _$TradeModelCopyWithImpl<$Res, _$TradeModelImpl>
    implements _$$TradeModelImplCopyWith<$Res> {
  __$$TradeModelImplCopyWithImpl(
      _$TradeModelImpl _value, $Res Function(_$TradeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryTime = null,
    Object? entryPrice = null,
    Object? exitTime = null,
    Object? profit = null,
  }) {
    return _then(_$TradeModelImpl(
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as String,
      entryPrice: null == entryPrice
          ? _value.entryPrice
          : entryPrice // ignore: cast_nullable_to_non_nullable
              as String,
      exitTime: null == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as String,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeModelImpl implements _TradeModel {
  _$TradeModelImpl(
      {required this.entryTime,
      required this.entryPrice,
      required this.exitTime,
      required this.profit});

  factory _$TradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeModelImplFromJson(json);

  @override
  final String entryTime;
  @override
  final String entryPrice;
  @override
  final String exitTime;
  @override
  final String profit;

  @override
  String toString() {
    return 'TradeModel(entryTime: $entryTime, entryPrice: $entryPrice, exitTime: $exitTime, profit: $profit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeModelImpl &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            (identical(other.entryPrice, entryPrice) ||
                other.entryPrice == entryPrice) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.profit, profit) || other.profit == profit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entryTime, entryPrice, exitTime, profit);

  /// Create a copy of TradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeModelImplCopyWith<_$TradeModelImpl> get copyWith =>
      __$$TradeModelImplCopyWithImpl<_$TradeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeModelImplToJson(
      this,
    );
  }
}

abstract class _TradeModel implements TradeModel {
  factory _TradeModel(
      {required final String entryTime,
      required final String entryPrice,
      required final String exitTime,
      required final String profit}) = _$TradeModelImpl;

  factory _TradeModel.fromJson(Map<String, dynamic> json) =
      _$TradeModelImpl.fromJson;

  @override
  String get entryTime;
  @override
  String get entryPrice;
  @override
  String get exitTime;
  @override
  String get profit;

  /// Create a copy of TradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeModelImplCopyWith<_$TradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
