import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';

part 'authentication_response.freezed.dart';
part 'authentication_response.g.dart';

@freezed
class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse({
    String? token,
    String? refreshToken,
    User? user,
  }) = _AuthenticationResponse;

  factory AuthenticationResponse.fromJson(Map<String, Object?> json) =>
      _$AuthenticationResponseFromJson(json);
}
