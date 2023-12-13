// ignore_for_file: must_be_immutable

part of 'reviews_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reviews widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewsEvent extends Equatable {}

/// Event that is dispatched when the Reviews widget is first created.
class ReviewsInitialEvent extends ReviewsEvent {
  @override
  List<Object?> get props => [];
}
