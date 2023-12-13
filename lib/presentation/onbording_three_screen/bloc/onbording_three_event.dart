// ignore_for_file: must_be_immutable

part of 'onbording_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnbordingThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnbordingThreeEvent extends Equatable {}

/// Event that is dispatched when the OnbordingThree widget is first created.
class OnbordingThreeInitialEvent extends OnbordingThreeEvent {
  @override
  List<Object?> get props => [];
}
