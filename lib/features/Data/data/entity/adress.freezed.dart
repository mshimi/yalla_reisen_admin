// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddresseModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get houseNr => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get zipCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  HotelModel? get hotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false) String? houseNr,
      @JsonKey(includeIfNull: false) String? telephone,
      @JsonKey(includeIfNull: false) String? zipCode,
      @JsonKey(includeIfNull: false) HotelModel? hotel});

  $HotelModelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? street = freezed,
    Object? houseNr = freezed,
    Object? telephone = freezed,
    Object? zipCode = freezed,
    Object? hotel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNr: freezed == houseNr
          ? _value.houseNr
          : houseNr // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hotel: freezed == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelModelCopyWith<$Res>? get hotel {
    if (_value.hotel == null) {
      return null;
    }

    return $HotelModelCopyWith<$Res>(_value.hotel!, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddresseModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddresseModelImplCopyWith(
          _$AddresseModelImpl value, $Res Function(_$AddresseModelImpl) then) =
      __$$AddresseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false) String? houseNr,
      @JsonKey(includeIfNull: false) String? telephone,
      @JsonKey(includeIfNull: false) String? zipCode,
      @JsonKey(includeIfNull: false) HotelModel? hotel});

  @override
  $HotelModelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$AddresseModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddresseModelImpl>
    implements _$$AddresseModelImplCopyWith<$Res> {
  __$$AddresseModelImplCopyWithImpl(
      _$AddresseModelImpl _value, $Res Function(_$AddresseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? street = freezed,
    Object? houseNr = freezed,
    Object? telephone = freezed,
    Object? zipCode = freezed,
    Object? hotel = freezed,
  }) {
    return _then(_$AddresseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNr: freezed == houseNr
          ? _value.houseNr
          : houseNr // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hotel: freezed == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddresseModelImpl implements _AddresseModel {
  const _$AddresseModelImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.street,
      @JsonKey(includeIfNull: false) this.houseNr,
      @JsonKey(includeIfNull: false) this.telephone,
      @JsonKey(includeIfNull: false) this.zipCode,
      @JsonKey(includeIfNull: false) this.hotel});

  factory _$AddresseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddresseModelImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? street;
  @override
  @JsonKey(includeIfNull: false)
  final String? houseNr;
  @override
  @JsonKey(includeIfNull: false)
  final String? telephone;
  @override
  @JsonKey(includeIfNull: false)
  final String? zipCode;
  @override
  @JsonKey(includeIfNull: false)
  final HotelModel? hotel;

  @override
  String toString() {
    return 'AddressModel(id: $id, street: $street, houseNr: $houseNr, telephone: $telephone, zipCode: $zipCode, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddresseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.houseNr, houseNr) || other.houseNr == houseNr) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, street, houseNr, telephone, zipCode, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddresseModelImplCopyWith<_$AddresseModelImpl> get copyWith =>
      __$$AddresseModelImplCopyWithImpl<_$AddresseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddresseModelImplToJson(
      this,
    );
  }
}

abstract class _AddresseModel implements AddressModel {
  const factory _AddresseModel(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false) final String? street,
          @JsonKey(includeIfNull: false) final String? houseNr,
          @JsonKey(includeIfNull: false) final String? telephone,
          @JsonKey(includeIfNull: false) final String? zipCode,
          @JsonKey(includeIfNull: false) final HotelModel? hotel}) =
      _$AddresseModelImpl;

  factory _AddresseModel.fromJson(Map<String, dynamic> json) =
      _$AddresseModelImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get street;
  @override
  @JsonKey(includeIfNull: false)
  String? get houseNr;
  @override
  @JsonKey(includeIfNull: false)
  String? get telephone;
  @override
  @JsonKey(includeIfNull: false)
  String? get zipCode;
  @override
  @JsonKey(includeIfNull: false)
  HotelModel? get hotel;
  @override
  @JsonKey(ignore: true)
  _$$AddresseModelImplCopyWith<_$AddresseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
