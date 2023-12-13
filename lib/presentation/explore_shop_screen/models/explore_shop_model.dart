// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewelecton_item_model.dart';

/// This class defines the variables used in the [explore_shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreShopModel extends Equatable {
  ExploreShopModel({this.chipviewelectonItemList = const []}) {}

  List<ChipviewelectonItemModel> chipviewelectonItemList;

  ExploreShopModel copyWith(
      {List<ChipviewelectonItemModel>? chipviewelectonItemList}) {
    return ExploreShopModel(
      chipviewelectonItemList:
          chipviewelectonItemList ?? this.chipviewelectonItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewelectonItemList];
}
