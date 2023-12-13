// ignore_for_file: must_be_immutable

part of 'social_account_link_alert_bloc.dart';

/// Represents the state of SocialAccountLinkAlert in the application.
class SocialAccountLinkAlertState extends Equatable {
  SocialAccountLinkAlertState({this.socialAccountLinkAlertModelObj});

  SocialAccountLinkAlertModel? socialAccountLinkAlertModelObj;

  @override
  List<Object?> get props => [
        socialAccountLinkAlertModelObj,
      ];
  SocialAccountLinkAlertState copyWith(
      {SocialAccountLinkAlertModel? socialAccountLinkAlertModelObj}) {
    return SocialAccountLinkAlertState(
      socialAccountLinkAlertModelObj:
          socialAccountLinkAlertModelObj ?? this.socialAccountLinkAlertModelObj,
    );
  }
}
