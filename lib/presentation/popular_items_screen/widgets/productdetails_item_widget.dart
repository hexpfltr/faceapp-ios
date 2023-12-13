import '../models/productdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  ProductdetailsItemWidget(
    this.productdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdetailsItemModel productdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 192.v,
          width: 164.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUnsplashzhh3wm2ko3s,
                height: 192.v,
                width: 164.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgClock,
                height: 19.v,
                width: 20.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 12.v,
                  right: 12.h,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 34.h,
            top: 12.v,
          ),
          child: Text(
            productdetailsItemModelObj.productName!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 44.h,
            top: 5.v,
          ),
          child: Text(
            productdetailsItemModelObj.productPrice!,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
        ),
      ],
    );
  }
}
