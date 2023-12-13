import '../models/facebookprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FacebookprofileItemWidget extends StatelessWidget {
  FacebookprofileItemWidget(
    this.facebookprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FacebookprofileItemModel facebookprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLogosfacebook,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  facebookprofileItemModelObj.userName!,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMedium15_1,
                ),
                Text(
                  facebookprofileItemModelObj.welcomeText!,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgLink,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }
}
