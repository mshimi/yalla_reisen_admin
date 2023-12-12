import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';

class AuthenticationListner extends ChangeNotifier {
  late StreamSubscription<AuthenticationState> stream;
  AuthenticationListner() {
    getIt<AuthenticationBloc>().stream.listen((event) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    stream.cancel();
    super.dispose();
  }
}
