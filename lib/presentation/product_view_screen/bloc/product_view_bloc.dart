import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviews_item_model.dart';
import 'package:hexpdev_s_application1/presentation/product_view_screen/models/product_view_model.dart';
part 'product_view_event.dart';
part 'product_view_state.dart';

/// A bloc that manages the state of a ProductView according to the event that is dispatched to it.
class ProductViewBloc extends Bloc<ProductViewEvent, ProductViewState> {
  ProductViewBloc(ProductViewState initialState) : super(initialState) {
    on<ProductViewInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ProductViewInitialEvent event,
    Emitter<ProductViewState> emit,
  ) async {
    emit(state.copyWith(
        productViewModelObj: state.productViewModelObj?.copyWith(
      chipviewsItemList: fillChipviewsItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProductViewState> emit,
  ) {
    List<ChipviewsItemModel> newList = List<ChipviewsItemModel>.from(
        state.productViewModelObj!.chipviewsItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        productViewModelObj:
            state.productViewModelObj?.copyWith(chipviewsItemList: newList)));
  }

  List<ChipviewsItemModel> fillChipviewsItemList() {
    return List.generate(5, (index) => ChipviewsItemModel());
  }
}
