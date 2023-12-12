import 'package:dartz/dartz.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/authentication_response/authentication_response.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';

abstract class AuthenticationRepository {
  Future<Either<ApiFailure,User>> getUserInfo();
  Future<Either<ApiFailure,AuthenticationResponse>> login({required LoginRequest loginRequest});
  Future<void> logout();
  Future<Either> refreshToken();
}
