// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategiesState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StrategiesState {
  List<StrategiesModel> get strategieslist =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of StrategiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategiesStateCopyWith<StrategiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategiesStateCopyWith<$Res> {
  factory $StrategiesStateCopyWith(
          StrategiesState value, $Res Function(StrategiesState) then) =
      _$StrategiesStateCopyWithImpl<$Res, StrategiesState>;
  @useResult
  $Res call({List<StrategiesModel> strategieslist, bool isLoading});
}

/// @nodoc
class _$StrategiesStateCopyWithImpl<$Res, $Val extends StrategiesState>
    implements $StrategiesStateCopyWith<$Res> {
  _$StrategiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategieslist = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      strategieslist: null == strategieslist
          ? _value.strategieslist
          : strategieslist // ignore: cast_nullable_to_non_nullable
              as List<StrategiesModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategiesStateImplCopyWith<$Res>
    implements $StrategiesStateCopyWith<$Res> {
  factory _$$StrategiesStateImplCopyWith(_$StrategiesStateImpl value,
          $Res Function(_$StrategiesStateImpl) then) =
      __$$StrategiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StrategiesModel> strategieslist, bool isLoading});
}

/// @nodoc
class __$$StrategiesStateImplCopyWithImpl<$Res>
    extends _$StrategiesStateCopyWithImpl<$Res, _$StrategiesStateImpl>
    implements _$$StrategiesStateImplCopyWith<$Res> {
  __$$StrategiesStateImplCopyWithImpl(
      _$StrategiesStateImpl _value, $Res Function(_$StrategiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategieslist = null,
    Object? isLoading = null,
  }) {
    return _then(_$StrategiesStateImpl(
      strategieslist: null == strategieslist
          ? _value._strategieslist
          : strategieslist // ignore: cast_nullable_to_non_nullable
              as List<StrategiesModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StrategiesStateImpl implements _StrategiesState {
  _$StrategiesStateImpl(
      {final List<StrategiesModel> strategieslist = const <StrategiesModel>[],
      this.isLoading = false})
      : _strategieslist = strategieslist;

  final List<StrategiesModel> _strategieslist;
  @override
  @JsonKey()
  List<StrategiesModel> get strategieslist {
    if (_strategieslist is EqualUnmodifiableListView) return _strategieslist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strategieslist);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'StrategiesState(strategieslist: $strategieslist, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategiesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._strategieslist, _strategieslist) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_strategieslist), isLoading);

  /// Create a copy of StrategiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategiesStateImplCopyWith<_$StrategiesStateImpl> get copyWith =>
      __$$StrategiesStateImplCopyWithImpl<_$StrategiesStateImpl>(
          this, _$identity);
}

abstract class _StrategiesState implements StrategiesState {
  factory _StrategiesState(
      {final List<StrategiesModel> strategieslist,
      final bool isLoading}) = _$StrategiesStateImpl;

  @override
  List<StrategiesModel> get strategieslist;
  @override
  bool get isLoading;

  /// Create a copy of StrategiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategiesStateImplCopyWith<_$StrategiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
