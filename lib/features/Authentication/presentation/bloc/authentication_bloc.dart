import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/authenticationListner.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/entities/user/user.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/domain/repositories/authentication_repository.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final Box hive;

  AuthenticationBloc({required this.hive})
      : super(AuthenticationState.unAuthenticated()) {
    on<AuthenticationEvent>((event, emit) => emit(event.when(
        authenticated: (token) {
          return AuthenticationState.authenticated(token: token);
        },
        unAuthenticated: () => const AuthenticationState.unAuthenticated())));

    _hasToken();
  }

  Future<User?> get currentUser => _currentUser();
  String? get token =>
      state.when(authenticated: (t) => t, unAuthenticated: () => null);

  void _hasToken() {
    String? token = hive.get("token");
    if (token == null) {
      add(const AuthenticationEvent.unAuthenticated());
    } else {
      add(AuthenticationEvent.authenticated(token: token));
    }
  }

  Future<User?> _currentUser() {
    return state.when(authenticated: (token) async {
      var response = await getIt<AuthenticationRepository>().getUserInfo();

      return response.fold((l) {
        add(const AuthenticationEvent.unAuthenticated());
        return null;
      }, (r) => r);
    }, unAuthenticated: () async {
      return null;
    });
  }

  @override
  void onChange(Change<AuthenticationState> change) {
    change.nextState.when(authenticated: (t) {
      hive.put("token", t);
    }, unAuthenticated: () {
      hive.put("token", null);
    });

    super.onChange(change);
  }
}
