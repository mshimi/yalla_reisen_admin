// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StartedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CityEvent.started(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CityEvent {
  const factory _Started({required final int id}) = _$StartedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeletedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CityEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CityEvent {
  const factory _Deleted({required final int id}) = _$DeletedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityModel cityModel, int countryId});

  $CityModelCopyWith<$Res> get cityModel;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityModel = null,
    Object? countryId = null,
  }) {
    return _then(_$UpdatedImpl(
      cityModel: null == cityModel
          ? _value.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get cityModel {
    return $CityModelCopyWith<$Res>(_value.cityModel, (value) {
      return _then(_value.copyWith(cityModel: value));
    });
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl({required this.cityModel, required this.countryId});

  @override
  final CityModel cityModel;
  @override
  final int countryId;

  @override
  String toString() {
    return 'CityEvent.update(cityModel: $cityModel, countryId: $countryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.cityModel, cityModel) ||
                other.cityModel == cityModel) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityModel, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return update(cityModel, countryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return update?.call(cityModel, countryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(cityModel, countryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Updated implements CityEvent {
  const factory _Updated(
      {required final CityModel cityModel,
      required final int countryId}) = _$UpdatedImpl;

  CityModel get cityModel;
  int get countryId;
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MultipartFile image, int cityId});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? cityId = null,
  }) {
    return _then(_$UploadImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MultipartFile,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl({required this.image, required this.cityId});

  @override
  final MultipartFile image;
  @override
  final int cityId;

  @override
  String toString() {
    return 'CityEvent.uploadImage(image: $image, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return uploadImage(image, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return uploadImage?.call(image, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(image, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements CityEvent {
  const factory _UploadImage(
      {required final MultipartFile image,
      required final int cityId}) = _$UploadImageImpl;

  MultipartFile get image;
  int get cityId;
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImageImplCopyWith<$Res> {
  factory _$$DeleteImageImplCopyWith(
          _$DeleteImageImpl value, $Res Function(_$DeleteImageImpl) then) =
      __$$DeleteImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cityImageId});
}

/// @nodoc
class __$$DeleteImageImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$DeleteImageImpl>
    implements _$$DeleteImageImplCopyWith<$Res> {
  __$$DeleteImageImplCopyWithImpl(
      _$DeleteImageImpl _value, $Res Function(_$DeleteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityImageId = null,
  }) {
    return _then(_$DeleteImageImpl(
      cityImageId: null == cityImageId
          ? _value.cityImageId
          : cityImageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteImageImpl implements _DeleteImage {
  const _$DeleteImageImpl({required this.cityImageId});

  @override
  final int cityImageId;

  @override
  String toString() {
    return 'CityEvent.deleteImage(cityImageId: $cityImageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImageImpl &&
            (identical(other.cityImageId, cityImageId) ||
                other.cityImageId == cityImageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImageImplCopyWith<_$DeleteImageImpl> get copyWith =>
      __$$DeleteImageImplCopyWithImpl<_$DeleteImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return deleteImage(cityImageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return deleteImage?.call(cityImageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(cityImageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return deleteImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return deleteImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (deleteImage != null) {
      return deleteImage(this);
    }
    return orElse();
  }
}

abstract class _DeleteImage implements CityEvent {
  const factory _DeleteImage({required final int cityImageId}) =
      _$DeleteImageImpl;

  int get cityImageId;
  @JsonKey(ignore: true)
  _$$DeleteImageImplCopyWith<_$DeleteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAreaImplCopyWith<$Res> {
  factory _$$DeleteAreaImplCopyWith(
          _$DeleteAreaImpl value, $Res Function(_$DeleteAreaImpl) then) =
      __$$DeleteAreaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int areaId, int cityId});
}

/// @nodoc
class __$$DeleteAreaImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$DeleteAreaImpl>
    implements _$$DeleteAreaImplCopyWith<$Res> {
  __$$DeleteAreaImplCopyWithImpl(
      _$DeleteAreaImpl _value, $Res Function(_$DeleteAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? cityId = null,
  }) {
    return _then(_$DeleteAreaImpl(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAreaImpl implements _DeleteArea {
  const _$DeleteAreaImpl({required this.areaId, required this.cityId});

  @override
  final int areaId;
  @override
  final int cityId;

  @override
  String toString() {
    return 'CityEvent.deleteArea(areaId: $areaId, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAreaImpl &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, areaId, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAreaImplCopyWith<_$DeleteAreaImpl> get copyWith =>
      __$$DeleteAreaImplCopyWithImpl<_$DeleteAreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) started,
    required TResult Function(int id) delete,
    required TResult Function(CityModel cityModel, int countryId) update,
    required TResult Function(MultipartFile image, int cityId) uploadImage,
    required TResult Function(int cityImageId) deleteImage,
    required TResult Function(int areaId, int cityId) deleteArea,
  }) {
    return deleteArea(areaId, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? started,
    TResult? Function(int id)? delete,
    TResult? Function(CityModel cityModel, int countryId)? update,
    TResult? Function(MultipartFile image, int cityId)? uploadImage,
    TResult? Function(int cityImageId)? deleteImage,
    TResult? Function(int areaId, int cityId)? deleteArea,
  }) {
    return deleteArea?.call(areaId, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? started,
    TResult Function(int id)? delete,
    TResult Function(CityModel cityModel, int countryId)? update,
    TResult Function(MultipartFile image, int cityId)? uploadImage,
    TResult Function(int cityImageId)? deleteImage,
    TResult Function(int areaId, int cityId)? deleteArea,
    required TResult orElse(),
  }) {
    if (deleteArea != null) {
      return deleteArea(areaId, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Deleted value) delete,
    required TResult Function(_Updated value) update,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteImage value) deleteImage,
    required TResult Function(_DeleteArea value) deleteArea,
  }) {
    return deleteArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Deleted value)? delete,
    TResult? Function(_Updated value)? update,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteImage value)? deleteImage,
    TResult? Function(_DeleteArea value)? deleteArea,
  }) {
    return deleteArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Deleted value)? delete,
    TResult Function(_Updated value)? update,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteImage value)? deleteImage,
    TResult Function(_DeleteArea value)? deleteArea,
    required TResult orElse(),
  }) {
    if (deleteArea != null) {
      return deleteArea(this);
    }
    return orElse();
  }
}

abstract class _DeleteArea implements CityEvent {
  const factory _DeleteArea(
      {required final int areaId,
      required final int cityId}) = _$DeleteAreaImpl;

  int get areaId;
  int get cityId;
  @JsonKey(ignore: true)
  _$$DeleteAreaImplCopyWith<_$DeleteAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CityState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityModel cityModel});

  $CityModelCopyWith<$Res> get cityModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityModel = null,
  }) {
    return _then(_$SuccessImpl(
      cityModel: null == cityModel
          ? _value.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get cityModel {
    return $CityModelCopyWith<$Res>(_value.cityModel, (value) {
      return _then(_value.copyWith(cityModel: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.cityModel});

  @override
  final CityModel cityModel;

  @override
  String toString() {
    return 'CityState.success(cityModel: $cityModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.cityModel, cityModel) ||
                other.cityModel == cityModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) {
    return success(cityModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) {
    return success?.call(cityModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cityModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CityState {
  const factory _Success({required final CityModel cityModel}) = _$SuccessImpl;

  CityModel get cityModel;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFailure? apiFailure});

  $ApiFailureCopyWith<$Res>? get apiFailure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFailure = freezed,
  }) {
    return _then(_$FailedImpl(
      apiFailure: freezed == apiFailure
          ? _value.apiFailure
          : apiFailure // ignore: cast_nullable_to_non_nullable
              as ApiFailure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiFailureCopyWith<$Res>? get apiFailure {
    if (_value.apiFailure == null) {
      return null;
    }

    return $ApiFailureCopyWith<$Res>(_value.apiFailure!, (value) {
      return _then(_value.copyWith(apiFailure: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({this.apiFailure});

  @override
  final ApiFailure? apiFailure;

  @override
  String toString() {
    return 'CityState.failed(apiFailure: $apiFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.apiFailure, apiFailure) ||
                other.apiFailure == apiFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) {
    return failed(apiFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) {
    return failed?.call(apiFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(apiFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CityState {
  const factory _Failed({final ApiFailure? apiFailure}) = _$FailedImpl;

  ApiFailure? get apiFailure;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedStateImplCopyWith<$Res> {
  factory _$$DeletedStateImplCopyWith(
          _$DeletedStateImpl value, $Res Function(_$DeletedStateImpl) then) =
      __$$DeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$DeletedStateImpl>
    implements _$$DeletedStateImplCopyWith<$Res> {
  __$$DeletedStateImplCopyWithImpl(
      _$DeletedStateImpl _value, $Res Function(_$DeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedStateImpl implements _DeletedState {
  const _$DeletedStateImpl();

  @override
  String toString() {
    return 'CityState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeletedState implements CityState {
  const factory _DeletedState() = _$DeletedStateImpl;
}

/// @nodoc
abstract class _$$ImageUpdateImplCopyWith<$Res> {
  factory _$$ImageUpdateImplCopyWith(
          _$ImageUpdateImpl value, $Res Function(_$ImageUpdateImpl) then) =
      __$$ImageUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageUpdateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$ImageUpdateImpl>
    implements _$$ImageUpdateImplCopyWith<$Res> {
  __$$ImageUpdateImplCopyWithImpl(
      _$ImageUpdateImpl _value, $Res Function(_$ImageUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageUpdateImpl implements _ImageUpdate {
  const _$ImageUpdateImpl();

  @override
  String toString() {
    return 'CityState.imageUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CityModel cityModel) success,
    required TResult Function(ApiFailure? apiFailure) failed,
    required TResult Function() deleted,
    required TResult Function() imageUpdated,
  }) {
    return imageUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CityModel cityModel)? success,
    TResult? Function(ApiFailure? apiFailure)? failed,
    TResult? Function()? deleted,
    TResult? Function()? imageUpdated,
  }) {
    return imageUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CityModel cityModel)? success,
    TResult Function(ApiFailure? apiFailure)? failed,
    TResult Function()? deleted,
    TResult Function()? imageUpdated,
    required TResult orElse(),
  }) {
    if (imageUpdated != null) {
      return imageUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_DeletedState value) deleted,
    required TResult Function(_ImageUpdate value) imageUpdated,
  }) {
    return imageUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_DeletedState value)? deleted,
    TResult? Function(_ImageUpdate value)? imageUpdated,
  }) {
    return imageUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_DeletedState value)? deleted,
    TResult Function(_ImageUpdate value)? imageUpdated,
    required TResult orElse(),
  }) {
    if (imageUpdated != null) {
      return imageUpdated(this);
    }
    return orElse();
  }
}

abstract class _ImageUpdate implements CityState {
  const factory _ImageUpdate() = _$ImageUpdateImpl;
}
