// ignore_for_file: must_be_immutable

part of 'reviews_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ReviewsTabContainer widget is first created.
class ReviewsTabContainerInitialEvent extends ReviewsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
