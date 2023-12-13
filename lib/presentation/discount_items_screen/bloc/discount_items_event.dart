// ignore_for_file: must_be_immutable

part of 'discount_items_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscountItems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscountItemsEvent extends Equatable {}

/// Event that is dispatched when the DiscountItems widget is first created.
class DiscountItemsInitialEvent extends DiscountItemsEvent {
  @override
  List<Object?> get props => [];
}
