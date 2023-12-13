import 'bloc/onbording_two_bloc.dart';
import 'models/onbording_two_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_icon_button.dart';

class OnbordingTwoScreen extends StatelessWidget {
  const OnbordingTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnbordingTwoBloc>(
        create: (context) => OnbordingTwoBloc(
            OnbordingTwoState(onbordingTwoModelObj: OnbordingTwoModel()))
          ..add(OnbordingTwoInitialEvent()),
        child: OnbordingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnbordingTwoBloc, OnbordingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: CustomAppBar(
                  leadingWidth: 56.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  actions: [
                    AppbarTitle(
                        text: "lbl_skip".tr,
                        margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 9.v))
                  ]),
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgOnbordingtwo),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.h, vertical: 51.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Text("lbl_latest_style".tr,
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 11.v),
                            SizedBox(
                                width: 275.h,
                                child: Text("msg_the_latest_styles".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumWhiteA700_1
                                        .copyWith(height: 1.86))),
                            SizedBox(height: 39.v),
                            SizedBox(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          padding: EdgeInsets.all(18.h),
                                          alignment: Alignment.center,
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 80.adaptSize,
                                              width: 80.adaptSize,
                                              child: CircularProgressIndicator(
                                                  value: 0.5)))
                                    ]))
                          ])))));
    });
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
