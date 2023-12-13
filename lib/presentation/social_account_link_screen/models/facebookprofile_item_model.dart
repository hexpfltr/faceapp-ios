/// This class is used in the [facebookprofile_item_widget] screen.
class FacebookprofileItemModel {
  FacebookprofileItemModel({
    this.userName,
    this.welcomeText,
    this.id,
  }) {
    userName = userName ?? "Facebook";
    welcomeText = welcomeText ?? "Welcome to Facebook";
    id = id ?? "";
  }

  String? userName;

  String? welcomeText;

  String? id;
}
