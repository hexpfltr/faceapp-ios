// ignore_for_file: must_be_immutable

part of 'onbording_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnbordingTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnbordingTwoEvent extends Equatable {}

/// Event that is dispatched when the OnbordingTwo widget is first created.
class OnbordingTwoInitialEvent extends OnbordingTwoEvent {
  @override
  List<Object?> get props => [];
}
