import '../models/sectionlisttoda_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SectionlisttodaItemWidget extends StatelessWidget {
  SectionlisttodaItemWidget(
    this.sectionlisttodaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionlisttodaItemModel sectionlisttodaItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 70.v,
        width: 343.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 61.h),
                child: Text(
                  "lbl_02_minites_ago".tr,
                  style: CustomTextStyles.bodyMediumErrorContainer,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashqnuur0o5x8,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      bottom: 15.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_you".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_purchased_shoes".tr,
                            style: CustomTextStyles.bodyMediumInter_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
