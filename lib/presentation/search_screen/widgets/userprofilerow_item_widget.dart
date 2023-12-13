import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            Container(
              height: 58.adaptSize,
              width: 58.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
              decoration: BoxDecoration(
                color: appTheme.gray400,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
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
                    userprofilerowItemModelObj.premiumWatchTex!,
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
      ),
    );
  }
}
