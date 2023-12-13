/// This class is used in the [discountrow_item_widget] screen.
class DiscountrowItemModel {
  DiscountrowItemModel({
    this.discountText,
    this.id,
  }) {
    discountText = discountText ?? "20% Discount";
    id = id ?? "";
  }

  String? discountText;

  String? id;
}
