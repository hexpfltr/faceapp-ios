// ignore_for_file: must_be_immutable

part of 'social_account_link_bloc.dart';

/// Represents the state of SocialAccountLink in the application.
class SocialAccountLinkState extends Equatable {
  SocialAccountLinkState({this.socialAccountLinkModelObj});

  SocialAccountLinkModel? socialAccountLinkModelObj;

  @override
  List<Object?> get props => [
        socialAccountLinkModelObj,
      ];
  SocialAccountLinkState copyWith(
      {SocialAccountLinkModel? socialAccountLinkModelObj}) {
    return SocialAccountLinkState(
      socialAccountLinkModelObj:
          socialAccountLinkModelObj ?? this.socialAccountLinkModelObj,
    );
  }
}
