import '../models/chipviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewsItemWidget extends StatelessWidget {
  ChipviewsItemWidget(
    this.chipviewsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewsItemModel chipviewsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewsItemModelObj.s,
          style: TextStyle(
            color: chipviewsItemModelObj.isSelected
                ? appTheme.whiteA700
                : theme.colorScheme.primary,
            fontSize: 15.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewsItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: chipviewsItemModelObj.isSelected
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray10001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
