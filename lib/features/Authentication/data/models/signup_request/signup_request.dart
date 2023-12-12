import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request.freezed.dart';
part 'signup_request.g.dart';

@freezed
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    required String firstName,
    required String lastName,
    required String? email,
    required String? password,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, Object?> json) =>
      _$SignupRequestFromJson(json);
}
