import 'bloc/logout_bloc.dart';
import 'models/logout_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutBloc>(
      create: (context) => LogoutBloc(LogoutState(
        logoutModelObj: LogoutModel(),
      ))
        ..add(LogoutInitialEvent()),
      child: LogoutBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "lbl_alert".tr,
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 189.h,
            child: Text(
              "msg_do_you_want_to_log".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumErrorContainer15_1.copyWith(
                height: 1.53,
              ),
            ),
          ),
          SizedBox(height: 47.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButton(
                width: 164.h,
                text: "lbl_yes".tr,
              ),
              CustomElevatedButton(
                width: 163.h,
                text: "lbl_no".tr,
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleMedium16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
