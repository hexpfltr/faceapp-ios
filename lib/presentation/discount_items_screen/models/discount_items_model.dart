// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'discountrow_item_model.dart';

/// This class defines the variables used in the [discount_items_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscountItemsModel extends Equatable {
  DiscountItemsModel({this.discountrowItemList = const []}) {}

  List<DiscountrowItemModel> discountrowItemList;

  DiscountItemsModel copyWith(
      {List<DiscountrowItemModel>? discountrowItemList}) {
    return DiscountItemsModel(
      discountrowItemList: discountrowItemList ?? this.discountrowItemList,
    );
  }

  @override
  List<Object?> get props => [discountrowItemList];
}
