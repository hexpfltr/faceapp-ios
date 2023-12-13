// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'orderreceived_item_model.dart';

/// This class defines the variables used in the [order_status_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderStatusModel extends Equatable {
  OrderStatusModel({this.orderreceivedItemList = const []}) {}

  List<OrderreceivedItemModel> orderreceivedItemList;

  OrderStatusModel copyWith(
      {List<OrderreceivedItemModel>? orderreceivedItemList}) {
    return OrderStatusModel(
      orderreceivedItemList:
          orderreceivedItemList ?? this.orderreceivedItemList,
    );
  }

  @override
  List<Object?> get props => [orderreceivedItemList];
}
