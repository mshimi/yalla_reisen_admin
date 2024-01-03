import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';

Future<Either<ApiFailure, T>> executeAndHandleError<T>(
    Future<T> Function() function) async {
  try {
    final result = await function();

 
    return Right(result);
  } on DioException catch (e) {
    return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
  }
}
