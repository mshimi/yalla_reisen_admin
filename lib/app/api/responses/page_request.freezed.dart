// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageRequest _$PageRequestFromJson(Map<String, dynamic> json) {
  return _PageRequest.fromJson(json);
}

/// @nodoc
mixin _$PageRequest {
  @JsonKey(includeIfNull: false)
  int? get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set pageNumber(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set pageSize(int? value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get sortBy => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set sortBy(String? value) => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  SortDirection? get sortDirection => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  set sortDirection(SortDirection? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageRequestCopyWith<PageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageRequestCopyWith<$Res> {
  factory $PageRequestCopyWith(
          PageRequest value, $Res Function(PageRequest) then) =
      _$PageRequestCopyWithImpl<$Res, PageRequest>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? pageNumber,
      @JsonKey(includeIfNull: false) int? pageSize,
      @JsonKey(includeIfNull: false) String? sortBy,
      @JsonKey(includeIfNull: false) SortDirection? sortDirection});
}

/// @nodoc
class _$PageRequestCopyWithImpl<$Res, $Val extends PageRequest>
    implements $PageRequestCopyWith<$Res> {
  _$PageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? sortBy = freezed,
    Object? sortDirection = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortDirection: freezed == sortDirection
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageRequestImplCopyWith<$Res>
    implements $PageRequestCopyWith<$Res> {
  factory _$$PageRequestImplCopyWith(
          _$PageRequestImpl value, $Res Function(_$PageRequestImpl) then) =
      __$$PageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? pageNumber,
      @JsonKey(includeIfNull: false) int? pageSize,
      @JsonKey(includeIfNull: false) String? sortBy,
      @JsonKey(includeIfNull: false) SortDirection? sortDirection});
}

/// @nodoc
class __$$PageRequestImplCopyWithImpl<$Res>
    extends _$PageRequestCopyWithImpl<$Res, _$PageRequestImpl>
    implements _$$PageRequestImplCopyWith<$Res> {
  __$$PageRequestImplCopyWithImpl(
      _$PageRequestImpl _value, $Res Function(_$PageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? sortBy = freezed,
    Object? sortDirection = freezed,
  }) {
    return _then(_$PageRequestImpl(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortDirection: freezed == sortDirection
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageRequestImpl implements _PageRequest {
  _$PageRequestImpl(
      {@JsonKey(includeIfNull: false) this.pageNumber,
      @JsonKey(includeIfNull: false) this.pageSize,
      @JsonKey(includeIfNull: false) this.sortBy,
      @JsonKey(includeIfNull: false) this.sortDirection});

  factory _$PageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageRequestImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  int? pageNumber;
  @override
  @JsonKey(includeIfNull: false)
  int? pageSize;
  @override
  @JsonKey(includeIfNull: false)
  String? sortBy;
  @override
  @JsonKey(includeIfNull: false)
  SortDirection? sortDirection;

  @override
  String toString() {
    return 'PageRequest(pageNumber: $pageNumber, pageSize: $pageSize, sortBy: $sortBy, sortDirection: $sortDirection)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageRequestImplCopyWith<_$PageRequestImpl> get copyWith =>
      __$$PageRequestImplCopyWithImpl<_$PageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageRequestImplToJson(
      this,
    );
  }
}

abstract class _PageRequest implements PageRequest {
  factory _PageRequest(
          {@JsonKey(includeIfNull: false) int? pageNumber,
          @JsonKey(includeIfNull: false) int? pageSize,
          @JsonKey(includeIfNull: false) String? sortBy,
          @JsonKey(includeIfNull: false) SortDirection? sortDirection}) =
      _$PageRequestImpl;

  factory _PageRequest.fromJson(Map<String, dynamic> json) =
      _$PageRequestImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get pageNumber;
  @JsonKey(includeIfNull: false)
  set pageNumber(int? value);
  @override
  @JsonKey(includeIfNull: false)
  int? get pageSize;
  @JsonKey(includeIfNull: false)
  set pageSize(int? value);
  @override
  @JsonKey(includeIfNull: false)
  String? get sortBy;
  @JsonKey(includeIfNull: false)
  set sortBy(String? value);
  @override
  @JsonKey(includeIfNull: false)
  SortDirection? get sortDirection;
  @JsonKey(includeIfNull: false)
  set sortDirection(SortDirection? value);
  @override
  @JsonKey(ignore: true)
  _$$PageRequestImplCopyWith<_$PageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
