part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated({required String token})  =
      _Authenticated;
  const factory AuthenticationState.unAuthenticated() = _UnAuthenticated;
}

