import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/authentication_response/authentication_response.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/rule.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final RestClient restClient;
  AuthenticationRepositoryImpl({required this.restClient});

  @override
  Future<Either<ApiFailure, User>> getUserInfo() async {
    try {
      User user = await restClient.getUserInfo();
      if (user.role == Rule.admin) {
        return Right(user);
      } else {
        return Left(ApiFailure.UnAuthenticatedFailure());
      }
    } on DioException catch (e) {
      return Left(ApiFailure.fromStatusCode(e.response!.statusCode));
    }
  }

  @override
  Future<Either<ApiFailure, AuthenticationResponse>> login(
      {required LoginRequest loginRequest}) async {
    try {
      var response = await restClient.login(loginRequest: loginRequest);

      if (response.user!.role == Rule.admin) {
        return Right(response);
      } else {
        return Left(ApiFailure.UnAuthenticatedFailure());
      }
    } on DioException catch (e) {
      return Left(ApiFailure.fromDioExceptionType(dioExceptionType: e.type));
    } catch (e) {
     
      return Left(ApiFailure.unknownFailure());
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either> refreshToken() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }
}
