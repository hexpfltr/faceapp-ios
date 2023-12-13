// ignore_for_file: must_be_immutable

part of 'tracking_order_bloc.dart';

/// Represents the state of TrackingOrder in the application.
class TrackingOrderState extends Equatable {
  TrackingOrderState({this.trackingOrderModelObj});

  TrackingOrderModel? trackingOrderModelObj;

  @override
  List<Object?> get props => [
        trackingOrderModelObj,
      ];
  TrackingOrderState copyWith({TrackingOrderModel? trackingOrderModelObj}) {
    return TrackingOrderState(
      trackingOrderModelObj:
          trackingOrderModelObj ?? this.trackingOrderModelObj,
    );
  }
}
