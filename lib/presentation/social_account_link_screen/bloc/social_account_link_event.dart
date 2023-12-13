// ignore_for_file: must_be_immutable

part of 'social_account_link_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SocialAccountLink widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SocialAccountLinkEvent extends Equatable {}

/// Event that is dispatched when the SocialAccountLink widget is first created.
class SocialAccountLinkInitialEvent extends SocialAccountLinkEvent {
  @override
  List<Object?> get props => [];
}
