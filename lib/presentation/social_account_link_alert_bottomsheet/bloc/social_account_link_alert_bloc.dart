import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hexpdev_s_application1/presentation/social_account_link_alert_bottomsheet/models/social_account_link_alert_model.dart';
part 'social_account_link_alert_event.dart';
part 'social_account_link_alert_state.dart';

/// A bloc that manages the state of a SocialAccountLinkAlert according to the event that is dispatched to it.
class SocialAccountLinkAlertBloc
    extends Bloc<SocialAccountLinkAlertEvent, SocialAccountLinkAlertState> {
  SocialAccountLinkAlertBloc(SocialAccountLinkAlertState initialState)
      : super(initialState) {
    on<SocialAccountLinkAlertInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SocialAccountLinkAlertInitialEvent event,
    Emitter<SocialAccountLinkAlertState> emit,
  ) async {}
}
