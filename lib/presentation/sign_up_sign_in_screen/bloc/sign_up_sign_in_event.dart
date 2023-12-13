// ignore_for_file: must_be_immutable

part of 'sign_up_sign_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpSignIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpSignInEvent extends Equatable {}

/// Event that is dispatched when the SignUpSignIn widget is first created.
class SignUpSignInInitialEvent extends SignUpSignInEvent {
  @override
  List<Object?> get props => [];
}
