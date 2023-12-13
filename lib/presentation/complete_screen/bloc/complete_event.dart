// ignore_for_file: must_be_immutable

part of 'complete_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Complete widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CompleteEvent extends Equatable {}

/// Event that is dispatched when the Complete widget is first created.
class CompleteInitialEvent extends CompleteEvent {
  @override
  List<Object?> get props => [];
}
