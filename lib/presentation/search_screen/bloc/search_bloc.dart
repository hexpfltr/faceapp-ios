import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:hexpdev_s_application1/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<UserprofilerowItemModel> fillUserprofilerowItemList() {
    return List.generate(3, (index) => UserprofilerowItemModel());
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      userprofilerowItemList: fillUserprofilerowItemList(),
    )));
  }
}
