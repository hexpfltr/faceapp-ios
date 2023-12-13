import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderreceived_item_model.dart';
import 'package:hexpdev_s_application1/presentation/order_status_screen/models/order_status_model.dart';
part 'order_status_event.dart';
part 'order_status_state.dart';

/// A bloc that manages the state of a OrderStatus according to the event that is dispatched to it.
class OrderStatusBloc extends Bloc<OrderStatusEvent, OrderStatusState> {
  OrderStatusBloc(OrderStatusState initialState) : super(initialState) {
    on<OrderStatusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderStatusInitialEvent event,
    Emitter<OrderStatusState> emit,
  ) async {
    emit(state.copyWith(
        orderStatusModelObj: state.orderStatusModelObj
            ?.copyWith(orderreceivedItemList: fillOrderreceivedItemList())));
  }

  List<OrderreceivedItemModel> fillOrderreceivedItemList() {
    return List.generate(3, (index) => OrderreceivedItemModel());
  }
}
