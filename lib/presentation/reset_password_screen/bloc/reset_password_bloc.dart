import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/reset_password_screen/models/reset_password_model.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

/// A bloc that manages the state of a ResetPassword according to the event that is dispatched to it.
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(ResetPasswordState initialState) : super(initialState) {
    on<ResetPasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _onInitialize(
    ResetPasswordInitialEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true));
  }
}
