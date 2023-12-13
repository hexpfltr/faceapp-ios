// ignore_for_file: must_be_immutable

part of 'verification_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationCodeEvent extends Equatable {}

/// Event that is dispatched when the VerificationCode widget is first created.
class VerificationCodeInitialEvent extends VerificationCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
