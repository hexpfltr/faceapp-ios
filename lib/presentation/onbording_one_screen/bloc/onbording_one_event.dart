// ignore_for_file: must_be_immutable

part of 'onbording_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnbordingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnbordingOneEvent extends Equatable {}

/// Event that is dispatched when the OnbordingOne widget is first created.
class OnbordingOneInitialEvent extends OnbordingOneEvent {
  @override
  List<Object?> get props => [];
}
