// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entryRule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntryRuleModel _$EntryRuleModelFromJson(Map<String, dynamic> json) {
  return _EntryRuleModel.fromJson(json);
}

/// @nodoc
mixin _$EntryRuleModel {
  String? get indicatorId => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  /// Serializes this EntryRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntryRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryRuleModelCopyWith<EntryRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryRuleModelCopyWith<$Res> {
  factory $EntryRuleModelCopyWith(
          EntryRuleModel value, $Res Function(EntryRuleModel) then) =
      _$EntryRuleModelCopyWithImpl<$Res, EntryRuleModel>;
  @useResult
  $Res call(
      {String? indicatorId, String? condition, String? value, String? action});
}

/// @nodoc
class _$EntryRuleModelCopyWithImpl<$Res, $Val extends EntryRuleModel>
    implements $EntryRuleModelCopyWith<$Res> {
  _$EntryRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryRuleModel
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
abstract class _$$EntryRuleModelImplCopyWith<$Res>
    implements $EntryRuleModelCopyWith<$Res> {
  factory _$$EntryRuleModelImplCopyWith(_$EntryRuleModelImpl value,
          $Res Function(_$EntryRuleModelImpl) then) =
      __$$EntryRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? indicatorId, String? condition, String? value, String? action});
}

/// @nodoc
class __$$EntryRuleModelImplCopyWithImpl<$Res>
    extends _$EntryRuleModelCopyWithImpl<$Res, _$EntryRuleModelImpl>
    implements _$$EntryRuleModelImplCopyWith<$Res> {
  __$$EntryRuleModelImplCopyWithImpl(
      _$EntryRuleModelImpl _value, $Res Function(_$EntryRuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntryRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicatorId = freezed,
    Object? condition = freezed,
    Object? value = freezed,
    Object? action = freezed,
  }) {
    return _then(_$EntryRuleModelImpl(
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
class _$EntryRuleModelImpl implements _EntryRuleModel {
  _$EntryRuleModelImpl(
      {required this.indicatorId,
      required this.condition,
      required this.value,
      required this.action});

  factory _$EntryRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntryRuleModelImplFromJson(json);

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
    return 'EntryRuleModel(indicatorId: $indicatorId, condition: $condition, value: $value, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryRuleModelImpl &&
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

  /// Create a copy of EntryRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryRuleModelImplCopyWith<_$EntryRuleModelImpl> get copyWith =>
      __$$EntryRuleModelImplCopyWithImpl<_$EntryRuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryRuleModelImplToJson(
      this,
    );
  }
}

abstract class _EntryRuleModel implements EntryRuleModel {
  factory _EntryRuleModel(
      {required final String? indicatorId,
      required final String? condition,
      required final String? value,
      required final String? action}) = _$EntryRuleModelImpl;

  factory _EntryRuleModel.fromJson(Map<String, dynamic> json) =
      _$EntryRuleModelImpl.fromJson;

  @override
  String? get indicatorId;
  @override
  String? get condition;
  @override
  String? get value;
  @override
  String? get action;

  /// Create a copy of EntryRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryRuleModelImplCopyWith<_$EntryRuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
