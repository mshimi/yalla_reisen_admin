import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (getIt<AuthenticationBloc>().token != null) {
      String token = getIt<AuthenticationBloc>().token!;
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response!.statusCode == 401) {
      getIt<AuthenticationBloc>()
          .add(const AuthenticationEvent.unAuthenticated());
    }
    super.onError(err, handler);
  }
}
