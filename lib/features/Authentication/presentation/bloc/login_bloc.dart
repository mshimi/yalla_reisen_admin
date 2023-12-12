import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/authentication_response/authentication_response.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/data/models/login_request/login_request.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthenticationRepository authenticationRepository;

  LoginBloc({required this.authenticationRepository})
      : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginState.loading());

      LoginState? newState = await event.when(
        tryLogin: (loginRequest) async {
          // Either<ApiFailure, AuthenticationResponse> response =
          //     await authenticationRepository.login(loginRequest: loginRequest);

          // response.fold((l) {
          //   return LoginState.failed();
          // }, (r) {
          //   AuthenticationBloc authenticationBloc = getIt<AuthenticationBloc>();
          //   authenticationBloc
          //       .add(AuthenticationEvent.authenticated(token: r.token!));
          // });

          return _loginMapper(loginRequest);
        },
      );

      if (newState != null) {
        emit(newState);
      }
    });
  }

  Future<LoginState?> _loginMapper(LoginRequest loginRequest) async {
    Either<ApiFailure, AuthenticationResponse> response =
        await authenticationRepository.login(loginRequest: loginRequest);

    return response.fold((l) => LoginState.failed(), (r) {
      AuthenticationBloc authenticationBloc = getIt<AuthenticationBloc>();
      authenticationBloc
          .add(AuthenticationEvent.authenticated(token: r.token!));

      return null;
    });
  }
}
