import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/home_tab_container_screen/models/home_tab_container_model.dart';
part 'home_tab_container_event.dart';
part 'home_tab_container_state.dart';

/// A bloc that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerBloc
    extends Bloc<HomeTabContainerEvent, HomeTabContainerState> {
  HomeTabContainerBloc(HomeTabContainerState initialState)
      : super(initialState) {
    on<HomeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeTabContainerInitialEvent event,
    Emitter<HomeTabContainerState> emit,
  ) async {}
}
