import 'bloc/checkout_bloc.dart';
import 'models/checkout_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_radio_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutBloc>(
        create: (context) =>
            CheckoutBloc(CheckoutState(checkoutModelObj: CheckoutModel()))
              ..add(CheckoutInitialEvent()),
        child: CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_checkout".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_delivery_address".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 15.v),
                      Row(children: [
                        CustomIconButton(
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                            padding: EdgeInsets.all(9.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgLocationon)),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_address".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 2.v),
                                  Text("lbl_nsw_australia".tr,
                                      style:
                                          CustomTextStyles.bodyMediumOrange700)
                                ]))
                      ]),
                      SizedBox(height: 29.v),
                      Text("lbl_payment_mathod".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 9.v),
                      SizedBox(
                          height: 72.v,
                          width: 152.h,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgStylenonethemedefault,
                                height: 24.v,
                                width: 1.h),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 14.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 9.v),
                                    decoration: AppDecoration.fillGray,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVolume,
                                              height: 19.v,
                                              width: 32.h,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 1.h),
                                              child: Text("lbl_credit_card".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])))
                          ])),
                      SizedBox(height: 8.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 14.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: BlocSelector<CheckoutBloc, CheckoutState,
                                  String?>(
                              selector: (state) => state.radioGroup,
                              builder: (context, radioGroup) {
                                return CustomRadioButton(
                                    width: 295.h,
                                    text: "lbl_google_pay".tr,
                                    value: "lbl_google_pay".tr ?? "",
                                    groupValue: radioGroup,
                                    padding: EdgeInsets.fromLTRB(
                                        26.h, 7.v, 30.h, 7.v),
                                    isRightCheck: true,
                                    onChange: (value) {
                                      context.read<CheckoutBloc>().add(
                                          ChangeRadioButtonEvent(value: value));
                                    });
                              })),
                      SizedBox(height: 8.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 14.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: BlocSelector<CheckoutBloc, CheckoutState,
                                  String?>(
                              selector: (state) => state.radioGroup1,
                              builder: (context, radioGroup1) {
                                return CustomRadioButton(
                                    width: 295.h,
                                    text: "lbl_apple_pay".tr,
                                    value: "lbl_apple_pay".tr ?? "",
                                    groupValue: radioGroup1,
                                    padding: EdgeInsets.fromLTRB(
                                        26.h, 7.v, 30.h, 7.v),
                                    isRightCheck: true,
                                    onChange: (value) {
                                      context.read<CheckoutBloc>().add(
                                          ChangeRadioButton1Event(
                                              value: value));
                                    });
                              })),
                      SizedBox(height: 8.v),
                      SizedBox(
                          height: 72.v,
                          width: 101.h,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgStylenonethemedefault,
                                height: 24.v,
                                width: 1.h),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 14.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.v),
                                    decoration: AppDecoration.fillGray,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCursor,
                                              height: 24.v,
                                              width: 20.h,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 2.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: Text("lbl_paypal".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])))
                          ])),
                      SizedBox(height: 54.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_total".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainer17),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl".tr,
                                      style: CustomTextStyles
                                          .titleMediumOrange700SemiBold),
                                  TextSpan(
                                      text: "lbl_144_942".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold17)
                                ]),
                                textAlign: TextAlign.left)
                          ]),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(text: "lbl_pay_now".tr),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
