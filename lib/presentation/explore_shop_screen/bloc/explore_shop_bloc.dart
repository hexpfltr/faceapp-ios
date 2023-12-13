import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewelecton_item_model.dart';
import 'package:hexpdev_s_application1/presentation/explore_shop_screen/models/explore_shop_model.dart';
part 'explore_shop_event.dart';
part 'explore_shop_state.dart';

/// A bloc that manages the state of a ExploreShop according to the event that is dispatched to it.
class ExploreShopBloc extends Bloc<ExploreShopEvent, ExploreShopState> {
  ExploreShopBloc(ExploreShopState initialState) : super(initialState) {
    on<ExploreShopInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ExploreShopInitialEvent event,
    Emitter<ExploreShopState> emit,
  ) async {
    emit(state.copyWith(
        exploreShopModelObj: state.exploreShopModelObj?.copyWith(
      chipviewelectonItemList: fillChipviewelectonItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ExploreShopState> emit,
  ) {
    List<ChipviewelectonItemModel> newList =
        List<ChipviewelectonItemModel>.from(
            state.exploreShopModelObj!.chipviewelectonItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        exploreShopModelObj: state.exploreShopModelObj
            ?.copyWith(chipviewelectonItemList: newList)));
  }

  List<ChipviewelectonItemModel> fillChipviewelectonItemList() {
    return List.generate(21, (index) => ChipviewelectonItemModel());
  }
}
