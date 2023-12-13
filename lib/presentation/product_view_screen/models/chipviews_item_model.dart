// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviews_item_widget] screen.
class ChipviewsItemModel extends Equatable {
  ChipviewsItemModel({
    this.s = "S",
    this.isSelected = false,
  }) {}

  String s;

  bool isSelected;

  ChipviewsItemModel copyWith({
    String? s,
    bool? isSelected,
  }) {
    return ChipviewsItemModel(
      s: s ?? this.s,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [s, isSelected];
}
