import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/facebookprofile_item_model.dart';
import 'package:hexpdev_s_application1/presentation/social_account_link_screen/models/social_account_link_model.dart';
part 'social_account_link_event.dart';
part 'social_account_link_state.dart';

/// A bloc that manages the state of a SocialAccountLink according to the event that is dispatched to it.
class SocialAccountLinkBloc
    extends Bloc<SocialAccountLinkEvent, SocialAccountLinkState> {
  SocialAccountLinkBloc(SocialAccountLinkState initialState)
      : super(initialState) {
    on<SocialAccountLinkInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SocialAccountLinkInitialEvent event,
    Emitter<SocialAccountLinkState> emit,
  ) async {
    emit(state.copyWith(
        socialAccountLinkModelObj: state.socialAccountLinkModelObj?.copyWith(
            facebookprofileItemList: fillFacebookprofileItemList())));
  }

  List<FacebookprofileItemModel> fillFacebookprofileItemList() {
    return List.generate(4, (index) => FacebookprofileItemModel());
  }
}
