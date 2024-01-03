// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_rate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferRateRequest _$TransferRateRequestFromJson(Map<String, dynamic> json) {
  return _TransferRateRequest.fromJson(json);
}

/// @nodoc
mixin _$TransferRateRequest {
  @JsonKey(disallowNullValue: true)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  int get fromAreaId => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  int get toAreaId => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: true)
  double get nettPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferRateRequestCopyWith<TransferRateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRateRequestCopyWith<$Res> {
  factory $TransferRateRequestCopyWith(
          TransferRateRequest value, $Res Function(TransferRateRequest) then) =
      _$TransferRateRequestCopyWithImpl<$Res, TransferRateRequest>;
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int? id,
      @JsonKey(disallowNullValue: true) int fromAreaId,
      @JsonKey(disallowNullValue: true) int toAreaId,
      @JsonKey(disallowNullValue: true) double nettPrice});
}

/// @nodoc
class _$TransferRateRequestCopyWithImpl<$Res, $Val extends TransferRateRequest>
    implements $TransferRateRequestCopyWith<$Res> {
  _$TransferRateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromAreaId = null,
    Object? toAreaId = null,
    Object? nettPrice = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromAreaId: null == fromAreaId
          ? _value.fromAreaId
          : fromAreaId // ignore: cast_nullable_to_non_nullable
              as int,
      toAreaId: null == toAreaId
          ? _value.toAreaId
          : toAreaId // ignore: cast_nullable_to_non_nullable
              as int,
      nettPrice: null == nettPrice
          ? _value.nettPrice
          : nettPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferRateRequestImplCopyWith<$Res>
    implements $TransferRateRequestCopyWith<$Res> {
  factory _$$TransferRateRequestImplCopyWith(_$TransferRateRequestImpl value,
          $Res Function(_$TransferRateRequestImpl) then) =
      __$$TransferRateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(disallowNullValue: true) int? id,
      @JsonKey(disallowNullValue: true) int fromAreaId,
      @JsonKey(disallowNullValue: true) int toAreaId,
      @JsonKey(disallowNullValue: true) double nettPrice});
}

/// @nodoc
class __$$TransferRateRequestImplCopyWithImpl<$Res>
    extends _$TransferRateRequestCopyWithImpl<$Res, _$TransferRateRequestImpl>
    implements _$$TransferRateRequestImplCopyWith<$Res> {
  __$$TransferRateRequestImplCopyWithImpl(_$TransferRateRequestImpl _value,
      $Res Function(_$TransferRateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fromAreaId = null,
    Object? toAreaId = null,
    Object? nettPrice = null,
  }) {
    return _then(_$TransferRateRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fromAreaId: null == fromAreaId
          ? _value.fromAreaId
          : fromAreaId // ignore: cast_nullable_to_non_nullable
              as int,
      toAreaId: null == toAreaId
          ? _value.toAreaId
          : toAreaId // ignore: cast_nullable_to_non_nullable
              as int,
      nettPrice: null == nettPrice
          ? _value.nettPrice
          : nettPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferRateRequestImpl implements _TransferRateRequest {
  const _$TransferRateRequestImpl(
      {@JsonKey(disallowNullValue: true) this.id,
      @JsonKey(disallowNullValue: true) required this.fromAreaId,
      @JsonKey(disallowNullValue: true) required this.toAreaId,
      @JsonKey(disallowNullValue: true) required this.nettPrice});

  factory _$TransferRateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferRateRequestImplFromJson(json);

  @override
  @JsonKey(disallowNullValue: true)
  final int? id;
  @override
  @JsonKey(disallowNullValue: true)
  final int fromAreaId;
  @override
  @JsonKey(disallowNullValue: true)
  final int toAreaId;
  @override
  @JsonKey(disallowNullValue: true)
  final double nettPrice;

  @override
  String toString() {
    return 'TransferRateRequest(id: $id, fromAreaId: $fromAreaId, toAreaId: $toAreaId, nettPrice: $nettPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRateRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromAreaId, fromAreaId) ||
                other.fromAreaId == fromAreaId) &&
            (identical(other.toAreaId, toAreaId) ||
                other.toAreaId == toAreaId) &&
            (identical(other.nettPrice, nettPrice) ||
                other.nettPrice == nettPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromAreaId, toAreaId, nettPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRateRequestImplCopyWith<_$TransferRateRequestImpl> get copyWith =>
      __$$TransferRateRequestImplCopyWithImpl<_$TransferRateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferRateRequestImplToJson(
      this,
    );
  }
}

abstract class _TransferRateRequest implements TransferRateRequest {
  const factory _TransferRateRequest(
          {@JsonKey(disallowNullValue: true) final int? id,
          @JsonKey(disallowNullValue: true) required final int fromAreaId,
          @JsonKey(disallowNullValue: true) required final int toAreaId,
          @JsonKey(disallowNullValue: true) required final double nettPrice}) =
      _$TransferRateRequestImpl;

  factory _TransferRateRequest.fromJson(Map<String, dynamic> json) =
      _$TransferRateRequestImpl.fromJson;

  @override
  @JsonKey(disallowNullValue: true)
  int? get id;
  @override
  @JsonKey(disallowNullValue: true)
  int get fromAreaId;
  @override
  @JsonKey(disallowNullValue: true)
  int get toAreaId;
  @override
  @JsonKey(disallowNullValue: true)
  double get nettPrice;
  @override
  @JsonKey(ignore: true)
  _$$TransferRateRequestImplCopyWith<_$TransferRateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
