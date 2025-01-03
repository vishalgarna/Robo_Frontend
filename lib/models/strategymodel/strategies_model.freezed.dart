// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategiesModel _$StrategiesModelFromJson(Map<String, dynamic> json) {
  return _StrategiesModel.fromJson(json);
}

/// @nodoc
mixin _$StrategiesModel {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get timeframe => throw _privateConstructorUsedError;
  String? get strategyName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get deployed => throw _privateConstructorUsedError;
  List<IndicatorModel>? get indicators => throw _privateConstructorUsedError;
  List<dynamic>? get entryRuleModel => throw _privateConstructorUsedError;
  List<ExitRuleModel>? get exitRuleModel => throw _privateConstructorUsedError;
  OrderDetailsModel? get orderDetails => throw _privateConstructorUsedError;

  /// Serializes this StrategiesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategiesModelCopyWith<StrategiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategiesModelCopyWith<$Res> {
  factory $StrategiesModelCopyWith(
          StrategiesModel value, $Res Function(StrategiesModel) then) =
      _$StrategiesModelCopyWithImpl<$Res, StrategiesModel>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? timeframe,
      String? strategyName,
      String? description,
      bool? deployed,
      List<IndicatorModel>? indicators,
      List<dynamic>? entryRuleModel,
      List<ExitRuleModel>? exitRuleModel,
      OrderDetailsModel? orderDetails});

  $OrderDetailsModelCopyWith<$Res>? get orderDetails;
}

/// @nodoc
class _$StrategiesModelCopyWithImpl<$Res, $Val extends StrategiesModel>
    implements $StrategiesModelCopyWith<$Res> {
  _$StrategiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? timeframe = freezed,
    Object? strategyName = freezed,
    Object? description = freezed,
    Object? deployed = freezed,
    Object? indicators = freezed,
    Object? entryRuleModel = freezed,
    Object? exitRuleModel = freezed,
    Object? orderDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeframe: freezed == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String?,
      strategyName: freezed == strategyName
          ? _value.strategyName
          : strategyName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deployed: freezed == deployed
          ? _value.deployed
          : deployed // ignore: cast_nullable_to_non_nullable
              as bool?,
      indicators: freezed == indicators
          ? _value.indicators
          : indicators // ignore: cast_nullable_to_non_nullable
              as List<IndicatorModel>?,
      entryRuleModel: freezed == entryRuleModel
          ? _value.entryRuleModel
          : entryRuleModel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      exitRuleModel: freezed == exitRuleModel
          ? _value.exitRuleModel
          : exitRuleModel // ignore: cast_nullable_to_non_nullable
              as List<ExitRuleModel>?,
      orderDetails: freezed == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsModelCopyWith<$Res>? get orderDetails {
    if (_value.orderDetails == null) {
      return null;
    }

    return $OrderDetailsModelCopyWith<$Res>(_value.orderDetails!, (value) {
      return _then(_value.copyWith(orderDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrategiesModelImplCopyWith<$Res>
    implements $StrategiesModelCopyWith<$Res> {
  factory _$$StrategiesModelImplCopyWith(_$StrategiesModelImpl value,
          $Res Function(_$StrategiesModelImpl) then) =
      __$$StrategiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? timeframe,
      String? strategyName,
      String? description,
      bool? deployed,
      List<IndicatorModel>? indicators,
      List<dynamic>? entryRuleModel,
      List<ExitRuleModel>? exitRuleModel,
      OrderDetailsModel? orderDetails});

  @override
  $OrderDetailsModelCopyWith<$Res>? get orderDetails;
}

/// @nodoc
class __$$StrategiesModelImplCopyWithImpl<$Res>
    extends _$StrategiesModelCopyWithImpl<$Res, _$StrategiesModelImpl>
    implements _$$StrategiesModelImplCopyWith<$Res> {
  __$$StrategiesModelImplCopyWithImpl(
      _$StrategiesModelImpl _value, $Res Function(_$StrategiesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? timeframe = freezed,
    Object? strategyName = freezed,
    Object? description = freezed,
    Object? deployed = freezed,
    Object? indicators = freezed,
    Object? entryRuleModel = freezed,
    Object? exitRuleModel = freezed,
    Object? orderDetails = freezed,
  }) {
    return _then(_$StrategiesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeframe: freezed == timeframe
          ? _value.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as String?,
      strategyName: freezed == strategyName
          ? _value.strategyName
          : strategyName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deployed: freezed == deployed
          ? _value.deployed
          : deployed // ignore: cast_nullable_to_non_nullable
              as bool?,
      indicators: freezed == indicators
          ? _value._indicators
          : indicators // ignore: cast_nullable_to_non_nullable
              as List<IndicatorModel>?,
      entryRuleModel: freezed == entryRuleModel
          ? _value._entryRuleModel
          : entryRuleModel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      exitRuleModel: freezed == exitRuleModel
          ? _value._exitRuleModel
          : exitRuleModel // ignore: cast_nullable_to_non_nullable
              as List<ExitRuleModel>?,
      orderDetails: freezed == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategiesModelImpl implements _StrategiesModel {
  _$StrategiesModelImpl(
      {this.id,
      required this.userId,
      required this.timeframe,
      required this.strategyName,
      required this.description,
      required this.deployed,
      required final List<IndicatorModel>? indicators,
      required final List<dynamic>? entryRuleModel,
      required final List<ExitRuleModel>? exitRuleModel,
      required this.orderDetails})
      : _indicators = indicators,
        _entryRuleModel = entryRuleModel,
        _exitRuleModel = exitRuleModel;

  factory _$StrategiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategiesModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? timeframe;
  @override
  final String? strategyName;
  @override
  final String? description;
  @override
  final bool? deployed;
  final List<IndicatorModel>? _indicators;
  @override
  List<IndicatorModel>? get indicators {
    final value = _indicators;
    if (value == null) return null;
    if (_indicators is EqualUnmodifiableListView) return _indicators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _entryRuleModel;
  @override
  List<dynamic>? get entryRuleModel {
    final value = _entryRuleModel;
    if (value == null) return null;
    if (_entryRuleModel is EqualUnmodifiableListView) return _entryRuleModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExitRuleModel>? _exitRuleModel;
  @override
  List<ExitRuleModel>? get exitRuleModel {
    final value = _exitRuleModel;
    if (value == null) return null;
    if (_exitRuleModel is EqualUnmodifiableListView) return _exitRuleModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrderDetailsModel? orderDetails;

  @override
  String toString() {
    return 'StrategiesModel(id: $id, userId: $userId, timeframe: $timeframe, strategyName: $strategyName, description: $description, deployed: $deployed, indicators: $indicators, entryRuleModel: $entryRuleModel, exitRuleModel: $exitRuleModel, orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.timeframe, timeframe) ||
                other.timeframe == timeframe) &&
            (identical(other.strategyName, strategyName) ||
                other.strategyName == strategyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deployed, deployed) ||
                other.deployed == deployed) &&
            const DeepCollectionEquality()
                .equals(other._indicators, _indicators) &&
            const DeepCollectionEquality()
                .equals(other._entryRuleModel, _entryRuleModel) &&
            const DeepCollectionEquality()
                .equals(other._exitRuleModel, _exitRuleModel) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      timeframe,
      strategyName,
      description,
      deployed,
      const DeepCollectionEquality().hash(_indicators),
      const DeepCollectionEquality().hash(_entryRuleModel),
      const DeepCollectionEquality().hash(_exitRuleModel),
      orderDetails);

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategiesModelImplCopyWith<_$StrategiesModelImpl> get copyWith =>
      __$$StrategiesModelImplCopyWithImpl<_$StrategiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategiesModelImplToJson(
      this,
    );
  }
}

abstract class _StrategiesModel implements StrategiesModel {
  factory _StrategiesModel(
      {final String? id,
      required final String? userId,
      required final String? timeframe,
      required final String? strategyName,
      required final String? description,
      required final bool? deployed,
      required final List<IndicatorModel>? indicators,
      required final List<dynamic>? entryRuleModel,
      required final List<ExitRuleModel>? exitRuleModel,
      required final OrderDetailsModel? orderDetails}) = _$StrategiesModelImpl;

  factory _StrategiesModel.fromJson(Map<String, dynamic> json) =
      _$StrategiesModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get timeframe;
  @override
  String? get strategyName;
  @override
  String? get description;
  @override
  bool? get deployed;
  @override
  List<IndicatorModel>? get indicators;
  @override
  List<dynamic>? get entryRuleModel;
  @override
  List<ExitRuleModel>? get exitRuleModel;
  @override
  OrderDetailsModel? get orderDetails;

  /// Create a copy of StrategiesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategiesModelImplCopyWith<_$StrategiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
