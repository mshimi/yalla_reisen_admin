import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.ServerFailure() = _$ServerFailure;
  const factory ApiFailure.UnAuthenticatedFailure() = _$UnAuthenticatedFailure;
  const factory ApiFailure.BadRequestFailure({String? error}) =
      _$BadRequestFailure;
  const factory ApiFailure.unknownFailure() = _$UnknownFailure;
  const factory ApiFailure.badResponse() = _$BadResponse;

  factory ApiFailure.fromStatusCode(int? statusCode) {
    switch (statusCode) {
      case 500:
        return ApiFailure.ServerFailure();
      case 401:
        return ApiFailure.UnAuthenticatedFailure();
      case 400:
        return ApiFailure.BadRequestFailure();

      default:
        return ApiFailure.ServerFailure();
    }
  }

  factory ApiFailure.fromDioExceptionType(
      {required DioExceptionType dioExceptionType}) {
    switch (dioExceptionType) {
      case DioExceptionType.badCertificate:
        return ApiFailure.ServerFailure();
      case DioExceptionType.badResponse:
        return ApiFailure.badResponse();
      case DioExceptionType.cancel:
        return ApiFailure.unknownFailure();
      case DioExceptionType.connectionError:
        return ApiFailure.ServerFailure();
      case DioExceptionType.connectionTimeout:
        return ApiFailure.ServerFailure();
      case DioExceptionType.receiveTimeout:
        return ApiFailure.ServerFailure();

      default:
        return ApiFailure.unknownFailure();
    }
  }
}
