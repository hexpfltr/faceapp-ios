// ignore_for_file: must_be_immutable

part of 'write_a_review_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WriteAReview widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WriteAReviewEvent extends Equatable {}

/// Event that is dispatched when the WriteAReview widget is first created.
class WriteAReviewInitialEvent extends WriteAReviewEvent {
  @override
  List<Object?> get props => [];
}
