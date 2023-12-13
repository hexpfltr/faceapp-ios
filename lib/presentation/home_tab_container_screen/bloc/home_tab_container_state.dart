// ignore_for_file: must_be_immutable

part of 'home_tab_container_bloc.dart';

/// Represents the state of HomeTabContainer in the application.
class HomeTabContainerState extends Equatable {
  HomeTabContainerState({this.homeTabContainerModelObj});

  HomeTabContainerModel? homeTabContainerModelObj;

  @override
  List<Object?> get props => [
        homeTabContainerModelObj,
      ];
  HomeTabContainerState copyWith(
      {HomeTabContainerModel? homeTabContainerModelObj}) {
    return HomeTabContainerState(
      homeTabContainerModelObj:
          homeTabContainerModelObj ?? this.homeTabContainerModelObj,
    );
  }
}
