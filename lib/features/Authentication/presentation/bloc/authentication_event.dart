part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticated({required String token}) =
      _AuthenticatedEvent;
  const factory AuthenticationEvent.unAuthenticated() = _UnAuthenticatedEvent;
}
