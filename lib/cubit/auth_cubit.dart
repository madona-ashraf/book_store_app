import 'auth_state.dart';
import 'package:bloc/bloc.dart' as bloc;

class AuthCubit extends bloc.Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  // Login
  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2)); // محاكاة API
    if (email == "test@test.com" && password == "123456") {
      emit(AuthSuccess("Login Successful"));
    } else {
      emit(AuthFailure("Invalid email or password"));
    }
  }

  // Register
  Future<void> register(String name, String email, String password) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (email.contains('@') && password.length >= 6) {
      emit(AuthSuccess("Welcome $name, registration successful"));
    } else {
      emit(AuthFailure("Invalid email or weak password"));
    }
  }

  // Forgot Password
  Future<void> sendResetCode(String email) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (email.contains('@')) {
      emit(AuthSuccess("Reset code sent to $email"));
    } else {
      emit(AuthFailure("Invalid email address"));
    }
  }

  // Verify OTP
  Future<void> verifyOtp(String code) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (code == "1234") {
      emit(AuthSuccess("OTP Verified"));
    } else {
      emit(AuthFailure("Invalid OTP"));
    }
  }

  // Reset Password
  Future<void> resetPassword(String newPassword) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (newPassword.isNotEmpty && newPassword.length >= 6) {
      emit(AuthSuccess("Password Changed"));
    } else {
      emit(AuthFailure("Password too short"));
    }
  }
}
