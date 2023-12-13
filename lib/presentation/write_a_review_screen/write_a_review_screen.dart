import 'bloc/write_a_review_bloc.dart';
import 'models/write_a_review_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

class WriteAReviewScreen extends StatelessWidget {
  const WriteAReviewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WriteAReviewBloc>(
        create: (context) => WriteAReviewBloc(
            WriteAReviewState(writeAReviewModelObj: WriteAReviewModel()))
          ..add(WriteAReviewInitialEvent()),
        child: WriteAReviewScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_write_a_review".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 80.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUnsplashifnycbwtal4,
                                height: 135.v,
                                width: 142.h,
                                radius: BorderRadius.circular(12.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 30.h, top: 10.v, bottom: 10.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_jacket".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 5.v),
                                      Text("lbl_black_jacket".tr,
                                          style: CustomTextStyles.bodyMedium15),
                                      SizedBox(height: 4.v),
                                      Text("lbl_size_xl".tr,
                                          style: CustomTextStyles
                                              .bodyMediumErrorContainer_2),
                                      SizedBox(height: 5.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeInterOrange700),
                                            TextSpan(
                                                text: "lbl_134_982".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeInter)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                          ])),
                      SizedBox(height: 22.v),
                      Text("msg_add_photo_or_video".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 15.v),
                      DottedBorder(
                          color: appTheme.gray20004,
                          padding: EdgeInsets.only(
                              left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                          strokeWidth: 2.h,
                          radius: Radius.circular(16),
                          borderType: BorderType.RRect,
                          dashPattern: [6, 6],
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 96.h, vertical: 24.v),
                              decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCloudupload,
                                        height: 50.adaptSize,
                                        width: 50.adaptSize),
                                    SizedBox(height: 12.v),
                                    Text("msg_click_here_to_upload".tr,
                                        style: CustomTextStyles
                                            .bodyMediumInterErrorContainer15)
                                  ]))),
                      SizedBox(height: 24.v),
                      Text("msg_write_yor_review".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 11.v),
                      BlocSelector<WriteAReviewBloc, WriteAReviewState,
                              TextEditingController?>(
                          selector: (state) => state.reviewquestionController,
                          builder: (context, reviewquestionController) {
                            return CustomTextFormField(
                                controller: reviewquestionController,
                                hintText: "msg_would_you_like_to".tr,
                                hintStyle: CustomTextStyles
                                    .bodyMediumInterErrorContainer_1,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.h, vertical: 17.v));
                          }),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_350_characters_remaining".tr,
                              style: CustomTextStyles
                                  .bodyMediumInterErrorContainer_1)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_write_a_review".tr,
                margin:
                    EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v))));
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
