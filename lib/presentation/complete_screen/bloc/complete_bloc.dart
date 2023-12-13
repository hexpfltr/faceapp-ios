import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/complete_screen/models/complete_model.dart';
part 'complete_event.dart';
part 'complete_state.dart';

/// A bloc that manages the state of a Complete according to the event that is dispatched to it.
class CompleteBloc extends Bloc<CompleteEvent, CompleteState> {
  CompleteBloc(CompleteState initialState) : super(initialState) {
    on<CompleteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompleteInitialEvent event,
    Emitter<CompleteState> emit,
  ) async {}
}
