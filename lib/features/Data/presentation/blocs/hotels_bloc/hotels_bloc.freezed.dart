// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsEventCopyWith<$Res> {
  factory $HotelsEventCopyWith(
          HotelsEvent value, $Res Function(HotelsEvent) then) =
      _$HotelsEventCopyWithImpl<$Res, HotelsEvent>;
}

/// @nodoc
class _$HotelsEventCopyWithImpl<$Res, $Val extends HotelsEvent>
    implements $HotelsEventCopyWith<$Res> {
  _$HotelsEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HotelsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HotelsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HotelsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePageNumberImplCopyWith<$Res> {
  factory _$$ChangePageNumberImplCopyWith(_$ChangePageNumberImpl value,
          $Res Function(_$ChangePageNumberImpl) then) =
      __$$ChangePageNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber});
}

/// @nodoc
class __$$ChangePageNumberImplCopyWithImpl<$Res>
    extends _$HotelsEventCopyWithImpl<$Res, _$ChangePageNumberImpl>
    implements _$$ChangePageNumberImplCopyWith<$Res> {
  __$$ChangePageNumberImplCopyWithImpl(_$ChangePageNumberImpl _value,
      $Res Function(_$ChangePageNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
  }) {
    return _then(_$ChangePageNumberImpl(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangePageNumberImpl implements _ChangePageNumber {
  const _$ChangePageNumberImpl({this.pageNumber});

  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'HotelsEvent.changePageNumber(pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageNumberImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageNumberImplCopyWith<_$ChangePageNumberImpl> get copyWith =>
      __$$ChangePageNumberImplCopyWithImpl<_$ChangePageNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) {
    return changePageNumber(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) {
    return changePageNumber?.call(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changePageNumber != null) {
      return changePageNumber(pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) {
    return changePageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) {
    return changePageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changePageNumber != null) {
      return changePageNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangePageNumber implements HotelsEvent {
  const factory _ChangePageNumber({final int? pageNumber}) =
      _$ChangePageNumberImpl;

  int? get pageNumber;
  @JsonKey(ignore: true)
  _$$ChangePageNumberImplCopyWith<_$ChangePageNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePageSizeImplCopyWith<$Res> {
  factory _$$ChangePageSizeImplCopyWith(_$ChangePageSizeImpl value,
          $Res Function(_$ChangePageSizeImpl) then) =
      __$$ChangePageSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageSize});
}

/// @nodoc
class __$$ChangePageSizeImplCopyWithImpl<$Res>
    extends _$HotelsEventCopyWithImpl<$Res, _$ChangePageSizeImpl>
    implements _$$ChangePageSizeImplCopyWith<$Res> {
  __$$ChangePageSizeImplCopyWithImpl(
      _$ChangePageSizeImpl _value, $Res Function(_$ChangePageSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = freezed,
  }) {
    return _then(_$ChangePageSizeImpl(
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangePageSizeImpl implements _ChangePageSize {
  const _$ChangePageSizeImpl({this.pageSize});

  @override
  final int? pageSize;

  @override
  String toString() {
    return 'HotelsEvent.changePageSized(pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageSizeImpl &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageSizeImplCopyWith<_$ChangePageSizeImpl> get copyWith =>
      __$$ChangePageSizeImplCopyWithImpl<_$ChangePageSizeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) {
    return changePageSized(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) {
    return changePageSized?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changePageSized != null) {
      return changePageSized(pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) {
    return changePageSized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) {
    return changePageSized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changePageSized != null) {
      return changePageSized(this);
    }
    return orElse();
  }
}

abstract class _ChangePageSize implements HotelsEvent {
  const factory _ChangePageSize({final int? pageSize}) = _$ChangePageSizeImpl;

  int? get pageSize;
  @JsonKey(ignore: true)
  _$$ChangePageSizeImplCopyWith<_$ChangePageSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortedByImplCopyWith<$Res> {
  factory _$$ChangeSortedByImplCopyWith(_$ChangeSortedByImpl value,
          $Res Function(_$ChangeSortedByImpl) then) =
      __$$ChangeSortedByImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? sortBy, SortDirection? sortDirection});
}

/// @nodoc
class __$$ChangeSortedByImplCopyWithImpl<$Res>
    extends _$HotelsEventCopyWithImpl<$Res, _$ChangeSortedByImpl>
    implements _$$ChangeSortedByImplCopyWith<$Res> {
  __$$ChangeSortedByImplCopyWithImpl(
      _$ChangeSortedByImpl _value, $Res Function(_$ChangeSortedByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = freezed,
    Object? sortDirection = freezed,
  }) {
    return _then(_$ChangeSortedByImpl(
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

class _$ChangeSortedByImpl implements _ChangeSortedBy {
  const _$ChangeSortedByImpl({this.sortBy, this.sortDirection});

  @override
  final String? sortBy;
  @override
  final SortDirection? sortDirection;

  @override
  String toString() {
    return 'HotelsEvent.changeSortedBy(sortBy: $sortBy, sortDirection: $sortDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortedByImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortDirection, sortDirection) ||
                other.sortDirection == sortDirection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy, sortDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortedByImplCopyWith<_$ChangeSortedByImpl> get copyWith =>
      __$$ChangeSortedByImplCopyWithImpl<_$ChangeSortedByImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) {
    return changeSortedBy(sortBy, sortDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) {
    return changeSortedBy?.call(sortBy, sortDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changeSortedBy != null) {
      return changeSortedBy(sortBy, sortDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) {
    return changeSortedBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) {
    return changeSortedBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) {
    if (changeSortedBy != null) {
      return changeSortedBy(this);
    }
    return orElse();
  }
}

abstract class _ChangeSortedBy implements HotelsEvent {
  const factory _ChangeSortedBy(
      {final String? sortBy,
      final SortDirection? sortDirection}) = _$ChangeSortedByImpl;

  String? get sortBy;
  SortDirection? get sortDirection;
  @JsonKey(ignore: true)
  _$$ChangeSortedByImplCopyWith<_$ChangeSortedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHotelImplCopyWith<$Res> {
  factory _$$DeleteHotelImplCopyWith(
          _$DeleteHotelImpl value, $Res Function(_$DeleteHotelImpl) then) =
      __$$DeleteHotelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteHotelImplCopyWithImpl<$Res>
    extends _$HotelsEventCopyWithImpl<$Res, _$DeleteHotelImpl>
    implements _$$DeleteHotelImplCopyWith<$Res> {
  __$$DeleteHotelImplCopyWithImpl(
      _$DeleteHotelImpl _value, $Res Function(_$DeleteHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteHotelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteHotelImpl implements _DeleteHotel {
  const _$DeleteHotelImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HotelsEvent.deleteHotel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHotelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHotelImplCopyWith<_$DeleteHotelImpl> get copyWith =>
      __$$DeleteHotelImplCopyWithImpl<_$DeleteHotelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? pageNumber) changePageNumber,
    required TResult Function(int? pageSize) changePageSized,
    required TResult Function(String? sortBy, SortDirection? sortDirection)
        changeSortedBy,
    required TResult Function(int id) deleteHotel,
  }) {
    return deleteHotel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? pageNumber)? changePageNumber,
    TResult? Function(int? pageSize)? changePageSized,
    TResult? Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult? Function(int id)? deleteHotel,
  }) {
    return deleteHotel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? pageNumber)? changePageNumber,
    TResult Function(int? pageSize)? changePageSized,
    TResult Function(String? sortBy, SortDirection? sortDirection)?
        changeSortedBy,
    TResult Function(int id)? deleteHotel,
    required TResult orElse(),
  }) {
    if (deleteHotel != null) {
      return deleteHotel(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePageNumber value) changePageNumber,
    required TResult Function(_ChangePageSize value) changePageSized,
    required TResult Function(_ChangeSortedBy value) changeSortedBy,
    required TResult Function(_DeleteHotel value) deleteHotel,
  }) {
    return deleteHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
    TResult? Function(_ChangePageSize value)? changePageSized,
    TResult? Function(_ChangeSortedBy value)? changeSortedBy,
    TResult? Function(_DeleteHotel value)? deleteHotel,
  }) {
    return deleteHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    TResult Function(_ChangePageSize value)? changePageSized,
    TResult Function(_ChangeSortedBy value)? changeSortedBy,
    TResult Function(_DeleteHotel value)? deleteHotel,
    required TResult orElse(),
  }) {
    if (deleteHotel != null) {
      return deleteHotel(this);
    }
    return orElse();
  }
}

abstract class _DeleteHotel implements HotelsEvent {
  const factory _DeleteHotel({required final int id}) = _$DeleteHotelImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteHotelImplCopyWith<_$DeleteHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)
        hasData,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasData value)? hasData,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsStateCopyWith<$Res> {
  factory $HotelsStateCopyWith(
          HotelsState value, $Res Function(HotelsState) then) =
      _$HotelsStateCopyWithImpl<$Res, HotelsState>;
}

/// @nodoc
class _$HotelsStateCopyWithImpl<$Res, $Val extends HotelsState>
    implements $HotelsStateCopyWith<$Res> {
  _$HotelsStateCopyWithImpl(this._value, this._then);

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
    extends _$HotelsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HotelsState.initial()';
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
    required TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)
        hasData,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult Function()? failed,
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
    required TResult Function(_HasData value) hasData,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasData value)? hasData,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HotelsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HasDataImplCopyWith<$Res> {
  factory _$$HasDataImplCopyWith(
          _$HasDataImpl value, $Res Function(_$HasDataImpl) then) =
      __$$HasDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PageResponse<dynamic> pageResponse, List<HotelModel> hotels});

  $PageResponseCopyWith<dynamic, $Res> get pageResponse;
}

/// @nodoc
class __$$HasDataImplCopyWithImpl<$Res>
    extends _$HotelsStateCopyWithImpl<$Res, _$HasDataImpl>
    implements _$$HasDataImplCopyWith<$Res> {
  __$$HasDataImplCopyWithImpl(
      _$HasDataImpl _value, $Res Function(_$HasDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageResponse = null,
    Object? hotels = null,
  }) {
    return _then(_$HasDataImpl(
      pageResponse: null == pageResponse
          ? _value.pageResponse
          : pageResponse // ignore: cast_nullable_to_non_nullable
              as PageResponse<dynamic>,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PageResponseCopyWith<dynamic, $Res> get pageResponse {
    return $PageResponseCopyWith<dynamic, $Res>(_value.pageResponse, (value) {
      return _then(_value.copyWith(pageResponse: value));
    });
  }
}

/// @nodoc

class _$HasDataImpl implements _HasData {
  const _$HasDataImpl(
      {required this.pageResponse, required final List<HotelModel> hotels})
      : _hotels = hotels;

  @override
  final PageResponse<dynamic> pageResponse;
  final List<HotelModel> _hotels;
  @override
  List<HotelModel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelsState.hasData(pageResponse: $pageResponse, hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasDataImpl &&
            (identical(other.pageResponse, pageResponse) ||
                other.pageResponse == pageResponse) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageResponse, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      __$$HasDataImplCopyWithImpl<_$HasDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)
        hasData,
    required TResult Function() failed,
  }) {
    return hasData(pageResponse, hotels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult? Function()? failed,
  }) {
    return hasData?.call(pageResponse, hotels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(pageResponse, hotels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_Failed value) failed,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_Failed value)? failed,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasData value)? hasData,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements HotelsState {
  const factory _HasData(
      {required final PageResponse<dynamic> pageResponse,
      required final List<HotelModel> hotels}) = _$HasDataImpl;

  PageResponse<dynamic> get pageResponse;
  List<HotelModel> get hotels;
  @JsonKey(ignore: true)
  _$$HasDataImplCopyWith<_$HasDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$HotelsStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'HotelsState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)
        hasData,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            PageResponse<dynamic> pageResponse, List<HotelModel> hotels)?
        hasData,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasData value) hasData,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasData value)? hasData,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasData value)? hasData,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements HotelsState {
  const factory _Failed() = _$FailedImpl;
}
