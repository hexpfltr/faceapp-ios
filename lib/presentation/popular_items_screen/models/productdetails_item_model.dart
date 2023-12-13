/// This class is used in the [productdetails_item_widget] screen.
class ProductdetailsItemModel {
  ProductdetailsItemModel({
    this.productName,
    this.productPrice,
    this.id,
  }) {
    productName = productName ?? "Black Jacket";
    productPrice = productPrice ?? " 246.00";
    id = id ?? "";
  }

  String? productName;

  String? productPrice;

  String? id;
}
