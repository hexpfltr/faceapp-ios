// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'facebookprofile_item_model.dart';

/// This class defines the variables used in the [social_account_link_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SocialAccountLinkModel extends Equatable {
  SocialAccountLinkModel({this.facebookprofileItemList = const []}) {}

  List<FacebookprofileItemModel> facebookprofileItemList;

  SocialAccountLinkModel copyWith(
      {List<FacebookprofileItemModel>? facebookprofileItemList}) {
    return SocialAccountLinkModel(
      facebookprofileItemList:
          facebookprofileItemList ?? this.facebookprofileItemList,
    );
  }

  @override
  List<Object?> get props => [facebookprofileItemList];
}
