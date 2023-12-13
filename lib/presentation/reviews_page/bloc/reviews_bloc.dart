import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/reviews_page/models/reviews_model.dart';
part 'reviews_event.dart';
part 'reviews_state.dart';

/// A bloc that manages the state of a Reviews according to the event that is dispatched to it.
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc(ReviewsState initialState) : super(initialState) {
    on<ReviewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewsInitialEvent event,
    Emitter<ReviewsState> emit,
  ) async {}
}
