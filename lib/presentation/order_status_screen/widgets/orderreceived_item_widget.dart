import '../models/orderreceived_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class OrderreceivedItemWidget extends StatelessWidget {
  OrderreceivedItemWidget(
    this.orderreceivedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderreceivedItemModel orderreceivedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgShareBlueGray100,
          height: 88.v,
          width: 8.h,
          margin: EdgeInsets.only(top: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            bottom: 42.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderreceivedItemModelObj.orderReceivedTe!,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLarge18,
              ),
              SizedBox(height: 1.v),
              Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCocolineclock,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      orderreceivedItemModelObj.timeText!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
