// ignore_for_file: must_be_immutable

part of 'order_status_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderStatus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderStatusEvent extends Equatable {}

/// Event that is dispatched when the OrderStatus widget is first created.
class OrderStatusInitialEvent extends OrderStatusEvent {
  @override
  List<Object?> get props => [];
}
