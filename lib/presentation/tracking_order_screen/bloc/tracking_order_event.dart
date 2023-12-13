// ignore_for_file: must_be_immutable

part of 'tracking_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrackingOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackingOrderEvent extends Equatable {}

/// Event that is dispatched when the TrackingOrder widget is first created.
class TrackingOrderInitialEvent extends TrackingOrderEvent {
  @override
  List<Object?> get props => [];
}
