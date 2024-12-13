// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicatormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndicatorModel _$IndicatorModelFromJson(Map<String, dynamic> json) {
  return _IndicatorModel.fromJson(json);
}

/// @nodoc
mixin _$IndicatorModel {
  String? get indicatorId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;

  /// Serializes this IndicatorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IndicatorModelCopyWith<IndicatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicatorModelCopyWith<$Res> {
  factory $IndicatorModelCopyWith(
          IndicatorModel value, $Res Function(IndicatorModel) then) =
      _$IndicatorModelCopyWithImpl<$Res, IndicatorModel>;
  @useResult
  $Res call(
      {String? indicatorId, String? type, Map<String, dynamic>? parameters});
}

/// @nodoc
class _$IndicatorModelCopyWithImpl<$Res, $Val extends IndicatorModel>
    implements $IndicatorModelCopyWith<$Res> {
  _$IndicatorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicatorId = freezed,
    Object? type = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndicatorModelImplCopyWith<$Res>
    implements $IndicatorModelCopyWith<$Res> {
  factory _$$IndicatorModelImplCopyWith(_$IndicatorModelImpl value,
          $Res Function(_$IndicatorModelImpl) then) =
      __$$IndicatorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? indicatorId, String? type, Map<String, dynamic>? parameters});
}

/// @nodoc
class __$$IndicatorModelImplCopyWithImpl<$Res>
    extends _$IndicatorModelCopyWithImpl<$Res, _$IndicatorModelImpl>
    implements _$$IndicatorModelImplCopyWith<$Res> {
  __$$IndicatorModelImplCopyWithImpl(
      _$IndicatorModelImpl _value, $Res Function(_$IndicatorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicatorId = freezed,
    Object? type = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_$IndicatorModelImpl(
      indicatorId: freezed == indicatorId
          ? _value.indicatorId
          : indicatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicatorModelImpl implements _IndicatorModel {
  _$IndicatorModelImpl(
      {required this.indicatorId,
      required this.type,
      required final Map<String, dynamic>? parameters})
      : _parameters = parameters;

  factory _$IndicatorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicatorModelImplFromJson(json);

  @override
  final String? indicatorId;
  @override
  final String? type;
  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IndicatorModel(indicatorId: $indicatorId, type: $type, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicatorModelImpl &&
            (identical(other.indicatorId, indicatorId) ||
                other.indicatorId == indicatorId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, indicatorId, type,
      const DeepCollectionEquality().hash(_parameters));

  /// Create a copy of IndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicatorModelImplCopyWith<_$IndicatorModelImpl> get copyWith =>
      __$$IndicatorModelImplCopyWithImpl<_$IndicatorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicatorModelImplToJson(
      this,
    );
  }
}

abstract class _IndicatorModel implements IndicatorModel {
  factory _IndicatorModel(
      {required final String? indicatorId,
      required final String? type,
      required final Map<String, dynamic>? parameters}) = _$IndicatorModelImpl;

  factory _IndicatorModel.fromJson(Map<String, dynamic> json) =
      _$IndicatorModelImpl.fromJson;

  @override
  String? get indicatorId;
  @override
  String? get type;
  @override
  Map<String, dynamic>? get parameters;

  /// Create a copy of IndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndicatorModelImplCopyWith<_$IndicatorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
