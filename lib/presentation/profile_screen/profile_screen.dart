import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 226.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 11.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL25,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 84.v),
                                CustomAppBar(
                                  height: 27.v,
                                  centerTitle: true,
                                  title: AppbarSubtitle(
                                    text: "lbl_profile".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 115.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 104.v,
                                  width: 92.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: 92.adaptSize,
                                        width: 92.adaptSize,
                                        radius: BorderRadius.circular(
                                          46.h,
                                        ),
                                        alignment: Alignment.topCenter,
                                      ),
                                      CustomIconButton(
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineWhiteA,
                                        alignment: Alignment.bottomCenter,
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgGroup948,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "lbl_anne_christion".tr,
                                  style: CustomTextStyles.titleLarge_1,
                                ),
                                Text(
                                  "lbl_xyz_gmail_com".tr,
                                  style: CustomTextStyles.bodySmall12_1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 23.v,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 14.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgPersonoutline,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text(
                                  "lbl_personal_data".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightPrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 5.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 12.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgStickynote2,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "msg_transaction_history".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightPrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 14.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGroup1104,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text(
                                  "lbl_discount_code".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightPrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 5.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 12.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSearch,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 1.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 3.v,
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightPrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 6.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 108.v),
                        CustomElevatedButton(
                          text: "lbl_logout".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 24.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgLogout,
                            ),
                          ),
                          buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                        ),
                        SizedBox(height: 5.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.onError,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.h),
                ),
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgGroup1231,
                height: 24.v,
                width: 276.h,
                margin: EdgeInsets.fromLTRB(50.h, 20.v, 49.h, 20.v),
              ),
            ),
          ),
        );
      },
    );
  }
}
