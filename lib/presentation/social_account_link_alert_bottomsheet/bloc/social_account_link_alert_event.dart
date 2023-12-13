// ignore_for_file: must_be_immutable

part of 'social_account_link_alert_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SocialAccountLinkAlert widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SocialAccountLinkAlertEvent extends Equatable {}

/// Event that is dispatched when the SocialAccountLinkAlert widget is first created.
class SocialAccountLinkAlertInitialEvent extends SocialAccountLinkAlertEvent {
  @override
  List<Object?> get props => [];
}
