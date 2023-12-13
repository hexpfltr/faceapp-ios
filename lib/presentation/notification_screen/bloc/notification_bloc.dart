import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sectionlisttoda_item_model.dart';
import 'package:hexpdev_s_application1/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj?.copyWith(
            sectionlisttodaItemList: fillSectionlisttodaItemList())));
  }

  List<SectionlisttodaItemModel> fillSectionlisttodaItemList() {
    return [
      SectionlisttodaItemModel(groupBy: "Today"),
      SectionlisttodaItemModel(groupBy: "Today"),
      SectionlisttodaItemModel(groupBy: "Today"),
      SectionlisttodaItemModel(groupBy: "Yesterday"),
      SectionlisttodaItemModel(groupBy: "Yesterday"),
      SectionlisttodaItemModel(groupBy: "Yesterday")
    ];
  }
}
