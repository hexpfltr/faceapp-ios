import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/verification_code_screen/models/verification_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_code_event.dart';
part 'verification_code_state.dart';

/// A bloc that manages the state of a VerificationCode according to the event that is dispatched to it.
class VerificationCodeBloc
    extends Bloc<VerificationCodeEvent, VerificationCodeState>
    with CodeAutoFill {
  VerificationCodeBloc(VerificationCodeState initialState)
      : super(initialState) {
    on<VerificationCodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationCodeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    VerificationCodeInitialEvent event,
    Emitter<VerificationCodeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
