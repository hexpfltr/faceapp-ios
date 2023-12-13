// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sectionlisttoda_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel extends Equatable {
  NotificationModel({this.sectionlisttodaItemList = const []}) {}

  List<SectionlisttodaItemModel> sectionlisttodaItemList;

  NotificationModel copyWith(
      {List<SectionlisttodaItemModel>? sectionlisttodaItemList}) {
    return NotificationModel(
      sectionlisttodaItemList:
          sectionlisttodaItemList ?? this.sectionlisttodaItemList,
    );
  }

  @override
  List<Object?> get props => [sectionlisttodaItemList];
}
