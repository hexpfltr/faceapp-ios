import '../models/discountrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class DiscountrowItemWidget extends StatelessWidget {
  DiscountrowItemWidget(
    this.discountrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscountrowItemModel discountrowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashqnuur0o5x858x58,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 2.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  discountrowItemModelObj.discountText!,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMedium15_1,
                ),
                SizedBox(height: 17.v),
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 0,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgArrowrightPrimary,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 22.v,
              right: 6.h,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }
}
