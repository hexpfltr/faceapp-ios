// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'productdetails_item_model.dart';

/// This class defines the variables used in the [popular_items_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopularItemsModel extends Equatable {
  PopularItemsModel({this.productdetailsItemList = const []}) {}

  List<ProductdetailsItemModel> productdetailsItemList;

  PopularItemsModel copyWith(
      {List<ProductdetailsItemModel>? productdetailsItemList}) {
    return PopularItemsModel(
      productdetailsItemList:
          productdetailsItemList ?? this.productdetailsItemList,
    );
  }

  @override
  List<Object?> get props => [productdetailsItemList];
}
