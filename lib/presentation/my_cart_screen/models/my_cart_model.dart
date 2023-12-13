// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'my_cart_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel extends Equatable {
  MyCartModel({this.myCartItemList = const []}) {}

  List<MyCartItemModel> myCartItemList;

  MyCartModel copyWith({List<MyCartItemModel>? myCartItemList}) {
    return MyCartModel(
      myCartItemList: myCartItemList ?? this.myCartItemList,
    );
  }

  @override
  List<Object?> get props => [myCartItemList];
}
