import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/onbording_two_screen/models/onbording_two_model.dart';
part 'onbording_two_event.dart';
part 'onbording_two_state.dart';

/// A bloc that manages the state of a OnbordingTwo according to the event that is dispatched to it.
class OnbordingTwoBloc extends Bloc<OnbordingTwoEvent, OnbordingTwoState> {
  OnbordingTwoBloc(OnbordingTwoState initialState) : super(initialState) {
    on<OnbordingTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingTwoInitialEvent event,
    Emitter<OnbordingTwoState> emit,
  ) async {}
}
