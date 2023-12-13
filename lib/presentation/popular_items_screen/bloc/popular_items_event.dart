// ignore_for_file: must_be_immutable

part of 'popular_items_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopularItems widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PopularItemsEvent extends Equatable {}

/// Event that is dispatched when the PopularItems widget is first created.
class PopularItemsInitialEvent extends PopularItemsEvent {
  @override
  List<Object?> get props => [];
}
