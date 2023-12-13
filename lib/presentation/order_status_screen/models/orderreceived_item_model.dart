/// This class is used in the [orderreceived_item_widget] screen.
class OrderreceivedItemModel {
  OrderreceivedItemModel({
    this.orderReceivedTe,
    this.timeText,
    this.id,
  }) {
    orderReceivedTe = orderReceivedTe ?? "Order Received";
    timeText = timeText ?? "05:48 PM, 7 June 2021";
    id = id ?? "";
  }

  String? orderReceivedTe;

  String? timeText;

  String? id;
}
