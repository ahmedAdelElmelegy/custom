import 'package:bloc/bloc.dart';
import 'package:customs/core/network/api_services.dart';
import 'package:customs/core/services/secure_cokkies.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.apiService) : super(LoginInitial());
  ApiService apiService;

  Future<void> login(String phone) async {
    emit(LoginLoading());
    try {
      final response = await apiService.post(
        'auth/login',
        queryParameters: {'phone': phone, 'phone_code': '+20'},
      );

      final data = response.data;

      if (data['code'] == 200) {
        final userData = data['data'];
        debugPrint(userData.toString());

        SecureCookie.setSecureCookie('user_data', userData);

        emit(LoginSuccess());
        debugPrint('Login successful, cookie saved securely');
      } else {
        emit(LoginError(message: data['message'] ?? 'Login failed'));
      }
    } catch (e) {
      emit(LoginError(message: e.toString()));
    }
  }
}
