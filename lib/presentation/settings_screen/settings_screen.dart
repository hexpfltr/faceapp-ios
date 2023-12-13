import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_switch.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
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
                title: AppbarSubtitle1(text: "lbl_settings".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 14.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            Container(
                                height: 64.adaptSize,
                                width: 64.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 64.adaptSize,
                                              width: 64.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5)))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 22.h, top: 6.v, bottom: 8.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_anne_christion".tr,
                                          style: CustomTextStyles.bodyLarge18),
                                      SizedBox(height: 1.v),
                                      Text("lbl_premium_user".tr,
                                          style: CustomTextStyles
                                              .bodyMediumErrorContainer_2)
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightPrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 24.v, bottom: 25.v))
                          ])),
                      SizedBox(height: 27.v),
                      Text("lbl_settings".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 14.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgNotificationsactive,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text("lbl_notifications".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Spacer(),
                            BlocSelector<SettingsBloc, SettingsState, bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                      margin: EdgeInsets.only(
                                          top: 5.v, bottom: 4.v),
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context.read<SettingsBloc>().add(
                                            ChangeSwitchEvent(value: value));
                                      });
                                })
                          ])),
                      SizedBox(height: 15.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 12.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgTimeline,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 2.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.h, top: 3.v),
                                    child: Text("lbl_tracking_order".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightPrimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 5.v, bottom: 6.v))
                              ])),
                      SizedBox(height: 15.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 14.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgTimer,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_order_status".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightPrimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 4.v, bottom: 5.v))
                              ])),
                      SizedBox(height: 15.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 12.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgTranslate,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 2.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.h, top: 4.v),
                                    child: Text("lbl_language".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightPrimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 5.v, bottom: 6.v))
                              ])),
                      SizedBox(height: 15.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 13.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgQuestionanswer,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_faqs".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightPrimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 4.v, bottom: 5.v))
                              ])),
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
