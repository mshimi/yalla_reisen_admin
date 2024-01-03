// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferRateModel _$TransferRateModelFromJson(Map<String, dynamic> json) {
  return _TransferRateModel.fromJson(json);
}

/// @nodoc
mixin _$TransferRateModel {
  @JsonKey(disallowNullValue: true)
  AreaModel get fromArea => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  AreaModel get toArea => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  double get nettPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferRateModelCopyWith<TransferRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRateModelCopyWith<$Res> {
  factory $TransferRateModelCopyWith(
          TransferRateModel value, $Res Function(TransferRateModel) then) =
      _$TransferRateModelCopyWithImpl<$Res, TransferRateModel>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) AreaModel fromArea,
      @JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) AreaModel toArea,
      @JsonKey(disallowNullValue: true) double nettPrice});

  $AreaModelCopyWith<$Res> get fromArea;
  $AreaModelCopyWith<$Res> get toArea;
}

/// @nodoc
class _$TransferRateModelCopyWithImpl<$Res, $Val extends TransferRateModel>
    implements $TransferRateModelCopyWith<$Res> {
  _$TransferRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromArea = null,
    Object? id = null,
    Object? toArea = null,
    Object? nettPrice = null,
  }) {
    return _then(_value.copyWith(
      fromArea: null == fromArea
          ? _value.fromArea
          : fromArea // ignore: cast_nullable_to_non_nullable
              as AreaModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      toArea: null == toArea
          ? _value.toArea
          : toArea // ignore: cast_nullable_to_non_nullable
              as AreaModel,
      nettPrice: null == nettPrice
          ? _value.nettPrice
          : nettPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaModelCopyWith<$Res> get fromArea {
    return $AreaModelCopyWith<$Res>(_value.fromArea, (value) {
      return _then(_value.copyWith(fromArea: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaModelCopyWith<$Res> get toArea {
    return $AreaModelCopyWith<$Res>(_value.toArea, (value) {
      return _then(_value.copyWith(toArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferRateModelImplCopyWith<$Res>
    implements $TransferRateModelCopyWith<$Res> {
  factory _$$TransferRateModelImplCopyWith(_$TransferRateModelImpl value,
          $Res Function(_$TransferRateModelImpl) then) =
      __$$TransferRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) AreaModel fromArea,
      @JsonKey(disallowNullValue: true) int id,
      @JsonKey(disallowNullValue: true) AreaModel toArea,
      @JsonKey(disallowNullValue: true) double nettPrice});

  @override
  $AreaModelCopyWith<$Res> get fromArea;
  @override
  $AreaModelCopyWith<$Res> get toArea;
}

/// @nodoc
class __$$TransferRateModelImplCopyWithImpl<$Res>
    extends _$TransferRateModelCopyWithImpl<$Res, _$TransferRateModelImpl>
    implements _$$TransferRateModelImplCopyWith<$Res> {
  __$$TransferRateModelImplCopyWithImpl(_$TransferRateModelImpl _value,
      $Res Function(_$TransferRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromArea = null,
    Object? id = null,
    Object? toArea = null,
    Object? nettPrice = null,
  }) {
    return _then(_$TransferRateModelImpl(
      fromArea: null == fromArea
          ? _value.fromArea
          : fromArea // ignore: cast_nullable_to_non_nullable
              as AreaModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      toArea: null == toArea
          ? _value.toArea
          : toArea // ignore: cast_nullable_to_non_nullable
              as AreaModel,
      nettPrice: null == nettPrice
          ? _value.nettPrice
          : nettPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferRateModelImpl implements _TransferRateModel {
  const _$TransferRateModelImpl(
      {@JsonKey(disallowNullValue: true) required this.fromArea,
      @JsonKey(disallowNullValue: true) required this.id,
      @JsonKey(disallowNullValue: true) required this.toArea,
      @JsonKey(disallowNullValue: true) required this.nettPrice});

  factory _$TransferRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferRateModelImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final AreaModel fromArea;
  @override
  @JsonKey(disallowNullValue: true)
  final int id;
  @override
  @JsonKey(disallowNullValue: true)
  final AreaModel toArea;
  @override
  @JsonKey(disallowNullValue: true)
  final double nettPrice;

  @override
  String toString() {
    return 'TransferRateModel(fromArea: $fromArea, id: $id, toArea: $toArea, nettPrice: $nettPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRateModelImpl &&
            (identical(other.fromArea, fromArea) ||
                other.fromArea == fromArea) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.toArea, toArea) || other.toArea == toArea) &&
            (identical(other.nettPrice, nettPrice) ||
                other.nettPrice == nettPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromArea, id, toArea, nettPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRateModelImplCopyWith<_$TransferRateModelImpl> get copyWith =>
      __$$TransferRateModelImplCopyWithImpl<_$TransferRateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferRateModelImplToJson(
      this,
    );
  }
}

abstract class _TransferRateModel implements TransferRateModel {
  const factory _TransferRateModel(
          {@JsonKey(disallowNullValue: true) required final AreaModel fromArea,
          @JsonKey(disallowNullValue: true) required final int id,
          @JsonKey(disallowNullValue: true) required final AreaModel toArea,
          @JsonKey(disallowNullValue: true) required final double nettPrice}) =
      _$TransferRateModelImpl;

  factory _TransferRateModel.fromJson(Map<String, dynamic> json) =
      _$TransferRateModelImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  AreaModel get fromArea;
  @override
  @JsonKey(disallowNullValue: true)
  int get id;
  @override
  @JsonKey(disallowNullValue: true)
  AreaModel get toArea;
  @override
  @JsonKey(disallowNullValue: true)
  double get nettPrice;
  @override
  @JsonKey(ignore: true)
  _$$TransferRateModelImplCopyWith<_$TransferRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
