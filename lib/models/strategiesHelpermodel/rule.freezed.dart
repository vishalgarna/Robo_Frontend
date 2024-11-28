// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RuleModel _$RuleModelFromJson(Map<String, dynamic> json) {
  return _RuleModel.fromJson(json);
}

/// @nodoc
mixin _$RuleModel {
  String get condition => throw _privateConstructorUsedError;
  String get indicator => throw _privateConstructorUsedError;
  String get comparison => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;

  /// Serializes this RuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuleModelCopyWith<RuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleModelCopyWith<$Res> {
  factory $RuleModelCopyWith(RuleModel value, $Res Function(RuleModel) then) =
      _$RuleModelCopyWithImpl<$Res, RuleModel>;
  @useResult
  $Res call(
      {String condition,
      String indicator,
      String comparison,
      String value,
      String action});
}

/// @nodoc
class _$RuleModelCopyWithImpl<$Res, $Val extends RuleModel>
    implements $RuleModelCopyWith<$Res> {
  _$RuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? indicator = null,
    Object? comparison = null,
    Object? value = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      indicator: null == indicator
          ? _value.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as String,
      comparison: null == comparison
          ? _value.comparison
          : comparison // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleModelImplCopyWith<$Res>
    implements $RuleModelCopyWith<$Res> {
  factory _$$RuleModelImplCopyWith(
          _$RuleModelImpl value, $Res Function(_$RuleModelImpl) then) =
      __$$RuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String condition,
      String indicator,
      String comparison,
      String value,
      String action});
}

/// @nodoc
class __$$RuleModelImplCopyWithImpl<$Res>
    extends _$RuleModelCopyWithImpl<$Res, _$RuleModelImpl>
    implements _$$RuleModelImplCopyWith<$Res> {
  __$$RuleModelImplCopyWithImpl(
      _$RuleModelImpl _value, $Res Function(_$RuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? indicator = null,
    Object? comparison = null,
    Object? value = null,
    Object? action = null,
  }) {
    return _then(_$RuleModelImpl(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      indicator: null == indicator
          ? _value.indicator
          : indicator // ignore: cast_nullable_to_non_nullable
              as String,
      comparison: null == comparison
          ? _value.comparison
          : comparison // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleModelImpl implements _RuleModel {
  _$RuleModelImpl(
      {required this.condition,
      required this.indicator,
      required this.comparison,
      required this.value,
      required this.action});

  factory _$RuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleModelImplFromJson(json);

  @override
  final String condition;
  @override
  final String indicator;
  @override
  final String comparison;
  @override
  final String value;
  @override
  final String action;

  @override
  String toString() {
    return 'RuleModel(condition: $condition, indicator: $indicator, comparison: $comparison, value: $value, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleModelImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.indicator, indicator) ||
                other.indicator == indicator) &&
            (identical(other.comparison, comparison) ||
                other.comparison == comparison) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, condition, indicator, comparison, value, action);

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleModelImplCopyWith<_$RuleModelImpl> get copyWith =>
      __$$RuleModelImplCopyWithImpl<_$RuleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleModelImplToJson(
      this,
    );
  }
}

abstract class _RuleModel implements RuleModel {
  factory _RuleModel(
      {required final String condition,
      required final String indicator,
      required final String comparison,
      required final String value,
      required final String action}) = _$RuleModelImpl;

  factory _RuleModel.fromJson(Map<String, dynamic> json) =
      _$RuleModelImpl.fromJson;

  @override
  String get condition;
  @override
  String get indicator;
  @override
  String get comparison;
  @override
  String get value;
  @override
  String get action;

  /// Create a copy of RuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuleModelImplCopyWith<_$RuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
