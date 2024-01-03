// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_vehicle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportVehicleDTO _$TransportVehicleDTOFromJson(Map<String, dynamic> json) {
  return _TransportVehicleDTO.fromJson(json);
}

/// @nodoc
mixin _$TransportVehicleDTO {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String get type => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int get minPassengers => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set minPassengers(int value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int get maxPassengers => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set maxPassengers(int value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set createdAt(String? value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set updatedAt(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportVehicleDTOCopyWith<TransportVehicleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportVehicleDTOCopyWith<$Res> {
  factory $TransportVehicleDTOCopyWith(
          TransportVehicleDTO value, $Res Function(TransportVehicleDTO) then) =
      _$TransportVehicleDTOCopyWithImpl<$Res, TransportVehicleDTO>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String type,
      @JsonKey(includeIfNull: false) int minPassengers,
      @JsonKey(includeIfNull: false) int maxPassengers,
      @JsonKey(includeIfNull: false) String? createdAt,
      @JsonKey(includeIfNull: false) String? updatedAt});
}

/// @nodoc
class _$TransportVehicleDTOCopyWithImpl<$Res, $Val extends TransportVehicleDTO>
    implements $TransportVehicleDTOCopyWith<$Res> {
  _$TransportVehicleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? minPassengers = null,
    Object? maxPassengers = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      minPassengers: null == minPassengers
          ? _value.minPassengers
          : minPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      maxPassengers: null == maxPassengers
          ? _value.maxPassengers
          : maxPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportVehicleDTOImplCopyWith<$Res>
    implements $TransportVehicleDTOCopyWith<$Res> {
  factory _$$TransportVehicleDTOImplCopyWith(_$TransportVehicleDTOImpl value,
          $Res Function(_$TransportVehicleDTOImpl) then) =
      __$$TransportVehicleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String type,
      @JsonKey(includeIfNull: false) int minPassengers,
      @JsonKey(includeIfNull: false) int maxPassengers,
      @JsonKey(includeIfNull: false) String? createdAt,
      @JsonKey(includeIfNull: false) String? updatedAt});
}

/// @nodoc
class __$$TransportVehicleDTOImplCopyWithImpl<$Res>
    extends _$TransportVehicleDTOCopyWithImpl<$Res, _$TransportVehicleDTOImpl>
    implements _$$TransportVehicleDTOImplCopyWith<$Res> {
  __$$TransportVehicleDTOImplCopyWithImpl(_$TransportVehicleDTOImpl _value,
      $Res Function(_$TransportVehicleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? minPassengers = null,
    Object? maxPassengers = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TransportVehicleDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      minPassengers: null == minPassengers
          ? _value.minPassengers
          : minPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      maxPassengers: null == maxPassengers
          ? _value.maxPassengers
          : maxPassengers // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportVehicleDTOImpl implements _TransportVehicleDTO {
  _$TransportVehicleDTOImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) required this.type,
      @JsonKey(includeIfNull: false) required this.minPassengers,
      @JsonKey(includeIfNull: false) required this.maxPassengers,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt});

  factory _$TransportVehicleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportVehicleDTOImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  int? id;
  @override
  @JsonKey(includeIfNull: false)
  String type;
  @override
  @JsonKey(includeIfNull: false)
  int minPassengers;
  @override
  @JsonKey(includeIfNull: false)
  int maxPassengers;
  @override
  @JsonKey(includeIfNull: false)
  String? createdAt;
  @override
  @JsonKey(includeIfNull: false)
  String? updatedAt;

  @override
  String toString() {
    return 'TransportVehicleDTO(id: $id, type: $type, minPassengers: $minPassengers, maxPassengers: $maxPassengers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportVehicleDTOImplCopyWith<_$TransportVehicleDTOImpl> get copyWith =>
      __$$TransportVehicleDTOImplCopyWithImpl<_$TransportVehicleDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportVehicleDTOImplToJson(
      this,
    );
  }
}

abstract class _TransportVehicleDTO implements TransportVehicleDTO {
  factory _TransportVehicleDTO(
          {@JsonKey(includeIfNull: false) int? id,
          @JsonKey(includeIfNull: false) required String type,
          @JsonKey(includeIfNull: false) required int minPassengers,
          @JsonKey(includeIfNull: false) required int maxPassengers,
          @JsonKey(includeIfNull: false) String? createdAt,
          @JsonKey(includeIfNull: false) String? updatedAt}) =
      _$TransportVehicleDTOImpl;

  factory _TransportVehicleDTO.fromJson(Map<String, dynamic> json) =
      _$TransportVehicleDTOImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @JsonKey(includeIfNull: false)
  set id(int? value);
  @override
  @JsonKey(includeIfNull: false)
  String get type;
  @JsonKey(includeIfNull: false)
  set type(String value);
  @override
  @JsonKey(includeIfNull: false)
  int get minPassengers;
  @JsonKey(includeIfNull: false)
  set minPassengers(int value);
  @override
  @JsonKey(includeIfNull: false)
  int get maxPassengers;
  @JsonKey(includeIfNull: false)
  set maxPassengers(int value);
  @override
  @JsonKey(includeIfNull: false)
  String? get createdAt;
  @JsonKey(includeIfNull: false)
  set createdAt(String? value);
  @override
  @JsonKey(includeIfNull: false)
  String? get updatedAt;
  @JsonKey(includeIfNull: false)
  set updatedAt(String? value);
  @override
  @JsonKey(ignore: true)
  _$$TransportVehicleDTOImplCopyWith<_$TransportVehicleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
