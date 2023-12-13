import '../models/my_cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MyCartItemWidget extends StatelessWidget {
  MyCartItemWidget(
    this.myCartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyCartItemModel myCartItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash8hqpxttomn0,
          height: 171.v,
          width: 142.h,
          radius: BorderRadius.circular(
            20.h,
          ),
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 2.v,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                myCartItemModelObj.casualtwo!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 5.v,
              ),
              child: Text(
                myCartItemModelObj.casualjeansshoe!,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMedium15,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 4.v,
              ),
              child: Text(
                "lbl_size_xl".tr,
                style: CustomTextStyles.bodyMediumErrorContainer_2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 5.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.bodyLargeInterOrange700,
                    ),
                    TextSpan(
                      text: "lbl_134_982".tr,
                      style: CustomTextStyles.bodyLargeInter,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 33.v),
            Row(
              children: [
                Container(
                  width: 87.h,
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClockWhiteA700,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.titleSmall15_1,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(left: 11.h),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgClose,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 80.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
