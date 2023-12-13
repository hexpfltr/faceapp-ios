// ignore_for_file: must_be_immutable

part of 'popular_items_bloc.dart';

/// Represents the state of PopularItems in the application.
class PopularItemsState extends Equatable {
  PopularItemsState({this.popularItemsModelObj});

  PopularItemsModel? popularItemsModelObj;

  @override
  List<Object?> get props => [
        popularItemsModelObj,
      ];
  PopularItemsState copyWith({PopularItemsModel? popularItemsModelObj}) {
    return PopularItemsState(
      popularItemsModelObj: popularItemsModelObj ?? this.popularItemsModelObj,
    );
  }
}
