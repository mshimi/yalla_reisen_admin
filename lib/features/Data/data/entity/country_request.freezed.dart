// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryRequest _$CountryRequestFromJson(Map<String, dynamic> json) {
  return _CountryRequest.fromJson(json);
}

/// @nodoc
mixin _$CountryRequest {
  String get countryName => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryRequestCopyWith<CountryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryRequestCopyWith<$Res> {
  factory $CountryRequestCopyWith(
          CountryRequest value, $Res Function(CountryRequest) then) =
      _$CountryRequestCopyWithImpl<$Res, CountryRequest>;
  @useResult
  $Res call({String countryName, String countryCode});
}

/// @nodoc
class _$CountryRequestCopyWithImpl<$Res, $Val extends CountryRequest>
    implements $CountryRequestCopyWith<$Res> {
  _$CountryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryRequestImplCopyWith<$Res>
    implements $CountryRequestCopyWith<$Res> {
  factory _$$CountryRequestImplCopyWith(_$CountryRequestImpl value,
          $Res Function(_$CountryRequestImpl) then) =
      __$$CountryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryName, String countryCode});
}

/// @nodoc
class __$$CountryRequestImplCopyWithImpl<$Res>
    extends _$CountryRequestCopyWithImpl<$Res, _$CountryRequestImpl>
    implements _$$CountryRequestImplCopyWith<$Res> {
  __$$CountryRequestImplCopyWithImpl(
      _$CountryRequestImpl _value, $Res Function(_$CountryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = null,
    Object? countryCode = null,
  }) {
    return _then(_$CountryRequestImpl(
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryRequestImpl implements _CountryRequest {
  const _$CountryRequestImpl(
      {required this.countryName, required this.countryCode});

  factory _$CountryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryRequestImplFromJson(json);

  @override
  final String countryName;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'CountryRequest(countryName: $countryName, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryRequestImpl &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryName, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryRequestImplCopyWith<_$CountryRequestImpl> get copyWith =>
      __$$CountryRequestImplCopyWithImpl<_$CountryRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryRequestImplToJson(
      this,
    );
  }
}

abstract class _CountryRequest implements CountryRequest {
  const factory _CountryRequest(
      {required final String countryName,
      required final String countryCode}) = _$CountryRequestImpl;

  factory _CountryRequest.fromJson(Map<String, dynamic> json) =
      _$CountryRequestImpl.fromJson;

  @override
  String get countryName;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$CountryRequestImplCopyWith<_$CountryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
