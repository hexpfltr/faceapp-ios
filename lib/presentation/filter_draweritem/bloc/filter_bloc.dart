import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/filter_draweritem/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

/// A bloc that manages the state of a Filter according to the event that is dispatched to it.
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(FilterState initialState) : super(initialState) {
    on<FilterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(
      priceController: TextEditingController(),
      maxController: TextEditingController(),
    ));
  }
}
