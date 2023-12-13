import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/onbording_one_screen/models/onbording_one_model.dart';
part 'onbording_one_event.dart';
part 'onbording_one_state.dart';

/// A bloc that manages the state of a OnbordingOne according to the event that is dispatched to it.
class OnbordingOneBloc extends Bloc<OnbordingOneEvent, OnbordingOneState> {
  OnbordingOneBloc(OnbordingOneState initialState) : super(initialState) {
    on<OnbordingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingOneInitialEvent event,
    Emitter<OnbordingOneState> emit,
  ) async {}
}
