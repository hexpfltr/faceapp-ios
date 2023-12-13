// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpEvent extends Equatable {}

/// Event that is dispatched when the SignUp widget is first created.
class SignUpInitialEvent extends SignUpEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
