// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exitRule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExitRuleModel _$ExitRuleModelFromJson(Map<String, dynamic> json) {
  return _ExitRuleModel.fromJson(json);
}

/// @nodoc
mixin _$ExitRuleModel {
  String? get indicatorId => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  /// Serializes this ExitRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExitRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExitRuleModelCopyWith<ExitRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExitRuleModelCopyWith<$Res> {
  factory $ExitRuleModelCopyWith(
          ExitRuleModel value, $Res Function(ExitRuleModel) then) =
      _$ExitRuleModelCopyWithImpl<$Res, ExitRuleModel>;
  @useResult
  $Res call(
      {String? indicatorId, String? condition, String? value, String? action});
}

/// @nodoc
class _$ExitRuleModelCopyWithImpl<$Res, $Val extends ExitRuleModel>
    implements $ExitRuleModelCopyWith<$Res> {
  _$ExitRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExitRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicatorId = freezed,
    Object? condition = freezed,
    Object? value = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExitRuleModelImplCopyWith<$Res>
    implements $ExitRuleModelCopyWith<$Res> {
  factory _$$ExitRuleModelImplCopyWith(
          _$ExitRuleModelImpl value, $Res Function(_$ExitRuleModelImpl) then) =
      __$$ExitRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? indicatorId, String? condition, String? value, String? action});
}

/// @nodoc
class __$$ExitRuleModelImplCopyWithImpl<$Res>
    extends _$ExitRuleModelCopyWithImpl<$Res, _$ExitRuleModelImpl>
    implements _$$ExitRuleModelImplCopyWith<$Res> {
  __$$ExitRuleModelImplCopyWithImpl(
      _$ExitRuleModelImpl _value, $Res Function(_$ExitRuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExitRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicatorId = freezed,
    Object? condition = freezed,
    Object? value = freezed,
    Object? action = freezed,
  }) {
    return _then(_$ExitRuleModelImpl(
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExitRuleModelImpl implements _ExitRuleModel {
  _$ExitRuleModelImpl(
      {required this.indicatorId,
      required this.condition,
      required this.value,
      required this.action});

  factory _$ExitRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExitRuleModelImplFromJson(json);

  @override
  final String? indicatorId;
  @override
  final String? condition;
  @override
  final String? value;
  @override
  final String? action;

  @override
  String toString() {
    return 'ExitRuleModel(indicatorId: $indicatorId, condition: $condition, value: $value, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitRuleModelImpl &&
            (identical(other.indicatorId, indicatorId) ||
                other.indicatorId == indicatorId) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, indicatorId, condition, value, action);

  /// Create a copy of ExitRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitRuleModelImplCopyWith<_$ExitRuleModelImpl> get copyWith =>
      __$$ExitRuleModelImplCopyWithImpl<_$ExitRuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExitRuleModelImplToJson(
      this,
    );
  }
}

abstract class _ExitRuleModel implements ExitRuleModel {
  factory _ExitRuleModel(
      {required final String? indicatorId,
      required final String? condition,
      required final String? value,
      required final String? action}) = _$ExitRuleModelImpl;

  factory _ExitRuleModel.fromJson(Map<String, dynamic> json) =
      _$ExitRuleModelImpl.fromJson;

  @override
  String? get indicatorId;
  @override
  String? get condition;
  @override
  String? get value;
  @override
  String? get action;

  /// Create a copy of ExitRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExitRuleModelImplCopyWith<_$ExitRuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
