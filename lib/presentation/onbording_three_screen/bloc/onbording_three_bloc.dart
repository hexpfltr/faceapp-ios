import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/onbording_three_screen/models/onbording_three_model.dart';
part 'onbording_three_event.dart';
part 'onbording_three_state.dart';

/// A bloc that manages the state of a OnbordingThree according to the event that is dispatched to it.
class OnbordingThreeBloc
    extends Bloc<OnbordingThreeEvent, OnbordingThreeState> {
  OnbordingThreeBloc(OnbordingThreeState initialState) : super(initialState) {
    on<OnbordingThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingThreeInitialEvent event,
    Emitter<OnbordingThreeState> emit,
  ) async {}
}
