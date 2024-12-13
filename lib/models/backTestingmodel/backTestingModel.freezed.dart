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
  double get profitOrLoss => throw _privateConstructorUsedError;
  int get orderCount => throw _privateConstructorUsedError;
  List<TradeModel> get trades => throw _privateConstructorUsedError;

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
  $Res call({double profitOrLoss, int orderCount, List<TradeModel> trades});
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
    Object? profitOrLoss = null,
    Object? orderCount = null,
    Object? trades = null,
  }) {
    return _then(_value.copyWith(
      profitOrLoss: null == profitOrLoss
          ? _value.profitOrLoss
          : profitOrLoss // ignore: cast_nullable_to_non_nullable
              as double,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      trades: null == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
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
  $Res call({double profitOrLoss, int orderCount, List<TradeModel> trades});
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
    Object? profitOrLoss = null,
    Object? orderCount = null,
    Object? trades = null,
  }) {
    return _then(_$BackTestingModelImpl(
      profitOrLoss: null == profitOrLoss
          ? _value.profitOrLoss
          : profitOrLoss // ignore: cast_nullable_to_non_nullable
              as double,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      trades: null == trades
          ? _value._trades
          : trades // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackTestingModelImpl implements _BackTestingModel {
  _$BackTestingModelImpl(
      {required this.profitOrLoss,
      required this.orderCount,
      required final List<TradeModel> trades})
      : _trades = trades;

  factory _$BackTestingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackTestingModelImplFromJson(json);

  @override
  final double profitOrLoss;
  @override
  final int orderCount;
  final List<TradeModel> _trades;
  @override
  List<TradeModel> get trades {
    if (_trades is EqualUnmodifiableListView) return _trades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trades);
  }

  @override
  String toString() {
    return 'BackTestingModel(profitOrLoss: $profitOrLoss, orderCount: $orderCount, trades: $trades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackTestingModelImpl &&
            (identical(other.profitOrLoss, profitOrLoss) ||
                other.profitOrLoss == profitOrLoss) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            const DeepCollectionEquality().equals(other._trades, _trades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profitOrLoss, orderCount,
      const DeepCollectionEquality().hash(_trades));

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
      {required final double profitOrLoss,
      required final int orderCount,
      required final List<TradeModel> trades}) = _$BackTestingModelImpl;

  factory _BackTestingModel.fromJson(Map<String, dynamic> json) =
      _$BackTestingModelImpl.fromJson;

  @override
  double get profitOrLoss;
  @override
  int get orderCount;
  @override
  List<TradeModel> get trades;

  /// Create a copy of BackTestingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackTestingModelImplCopyWith<_$BackTestingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
