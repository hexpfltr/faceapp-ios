// ignore_for_file: must_be_immutable

part of 'home_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeTabContainer widget is first created.
class HomeTabContainerInitialEvent extends HomeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
