/// This class is used in the [sectionlisttoda_item_widget] screen.
class SectionlisttodaItemModel {
  SectionlisttodaItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
