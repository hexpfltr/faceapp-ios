// ignore_for_file: must_be_immutable

part of 'logout_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Logout widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogoutEvent extends Equatable {}

/// Event that is dispatched when the Logout widget is first created.
class LogoutInitialEvent extends LogoutEvent {
  @override
  List<Object?> get props => [];
}
