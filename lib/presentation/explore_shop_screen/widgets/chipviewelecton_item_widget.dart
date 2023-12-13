import '../models/chipviewelecton_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewelectonItemWidget extends StatelessWidget {
  ChipviewelectonItemWidget(
    this.chipviewelectonItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewelectonItemModel chipviewelectonItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewelectonItemModelObj.electonics,
        style: TextStyle(
          color: chipviewelectonItemModelObj.isSelected
              ? appTheme.gray20003
              : theme.colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: chipviewelectonItemModelObj.isSelected,
      backgroundColor: appTheme.gray20003,
      selectedColor: theme.colorScheme.primary,
      shape: chipviewelectonItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
