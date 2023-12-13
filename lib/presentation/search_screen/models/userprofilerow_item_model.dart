/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {
  UserprofilerowItemModel({
    this.premiumWatchTex,
    this.id,
  }) {
    premiumWatchTex = premiumWatchTex ?? "Premium Watch";
    id = id ?? "";
  }

  String? premiumWatchTex;

  String? id;
}
