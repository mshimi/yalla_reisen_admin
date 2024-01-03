// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityImageModel _$CityImageModelFromJson(Map<String, dynamic> json) {
  return _CityImageModel.fromJson(json);
}

/// @nodoc
mixin _$CityImageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imageName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityImageModelCopyWith<CityImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityImageModelCopyWith<$Res> {
  factory $CityImageModelCopyWith(
          CityImageModel value, $Res Function(CityImageModel) then) =
      _$CityImageModelCopyWithImpl<$Res, CityImageModel>;
  @useResult
  $Res call({int? id, String? imageName, String? type, String? image});
}

/// @nodoc
class _$CityImageModelCopyWithImpl<$Res, $Val extends CityImageModel>
    implements $CityImageModelCopyWith<$Res> {
  _$CityImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageName = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImageModelImplCopyWith<$Res>
    implements $CityImageModelCopyWith<$Res> {
  factory _$$CityImageModelImplCopyWith(_$CityImageModelImpl value,
          $Res Function(_$CityImageModelImpl) then) =
      __$$CityImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? imageName, String? type, String? image});
}

/// @nodoc
class __$$CityImageModelImplCopyWithImpl<$Res>
    extends _$CityImageModelCopyWithImpl<$Res, _$CityImageModelImpl>
    implements _$$CityImageModelImplCopyWith<$Res> {
  __$$CityImageModelImplCopyWithImpl(
      _$CityImageModelImpl _value, $Res Function(_$CityImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageName = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CityImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageName: freezed == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImageModelImpl implements _CityImageModel {
  const _$CityImageModelImpl({this.id, this.imageName, this.type, this.image});

  factory _$CityImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? imageName;
  @override
  final String? type;
  @override
  final String? image;

  @override
  String toString() {
    return 'CityImageModel(id: $id, imageName: $imageName, type: $type, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageName, type, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImageModelImplCopyWith<_$CityImageModelImpl> get copyWith =>
      __$$CityImageModelImplCopyWithImpl<_$CityImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImageModelImplToJson(
      this,
    );
  }
}

abstract class _CityImageModel implements CityImageModel {
  const factory _CityImageModel(
      {final int? id,
      final String? imageName,
      final String? type,
      final String? image}) = _$CityImageModelImpl;

  factory _CityImageModel.fromJson(Map<String, dynamic> json) =
      _$CityImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get imageName;
  @override
  String? get type;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CityImageModelImplCopyWith<_$CityImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
