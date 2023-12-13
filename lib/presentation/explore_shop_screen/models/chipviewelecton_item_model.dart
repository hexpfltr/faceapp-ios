// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewelecton_item_widget] screen.
class ChipviewelectonItemModel extends Equatable {
  ChipviewelectonItemModel({
    this.electonics = "Electonics",
    this.isSelected = false,
  }) {}

  String electonics;

  bool isSelected;

  ChipviewelectonItemModel copyWith({
    String? electonics,
    bool? isSelected,
  }) {
    return ChipviewelectonItemModel(
      electonics: electonics ?? this.electonics,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [electonics, isSelected];
}
