import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/reviews_tab_container_screen/models/reviews_tab_container_model.dart';
part 'reviews_tab_container_event.dart';
part 'reviews_tab_container_state.dart';

/// A bloc that manages the state of a ReviewsTabContainer according to the event that is dispatched to it.
class ReviewsTabContainerBloc
    extends Bloc<ReviewsTabContainerEvent, ReviewsTabContainerState> {
  ReviewsTabContainerBloc(ReviewsTabContainerState initialState)
      : super(initialState) {
    on<ReviewsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewsTabContainerInitialEvent event,
    Emitter<ReviewsTabContainerState> emit,
  ) async {}
}
