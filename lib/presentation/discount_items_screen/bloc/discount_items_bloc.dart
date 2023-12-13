import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discountrow_item_model.dart';
import 'package:hexpdev_s_application1/presentation/discount_items_screen/models/discount_items_model.dart';
part 'discount_items_event.dart';
part 'discount_items_state.dart';

/// A bloc that manages the state of a DiscountItems according to the event that is dispatched to it.
class DiscountItemsBloc extends Bloc<DiscountItemsEvent, DiscountItemsState> {
  DiscountItemsBloc(DiscountItemsState initialState) : super(initialState) {
    on<DiscountItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscountItemsInitialEvent event,
    Emitter<DiscountItemsState> emit,
  ) async {
    emit(state.copyWith(
        discountItemsModelObj: state.discountItemsModelObj
            ?.copyWith(discountrowItemList: fillDiscountrowItemList())));
  }

  List<DiscountrowItemModel> fillDiscountrowItemList() {
    return List.generate(5, (index) => DiscountrowItemModel());
  }
}
