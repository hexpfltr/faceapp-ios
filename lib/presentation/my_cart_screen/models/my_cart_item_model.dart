/// This class is used in the [my_cart_item_widget] screen.
class MyCartItemModel {
  MyCartItemModel({
    this.casualtwo,
    this.casualjeansshoe,
    this.id,
  }) {
    casualtwo = casualtwo ?? "Casual";
    casualjeansshoe = casualjeansshoe ?? "Casual Jeans Shoes";
    id = id ?? "";
  }

  String? casualtwo;

  String? casualjeansshoe;

  String? id;
}
