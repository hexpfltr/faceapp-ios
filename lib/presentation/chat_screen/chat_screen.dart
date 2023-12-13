import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 49.v,
                leadingWidth: 56.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: Row(children: [
                      AppbarCircleimage(
                          imagePath: ImageConstant.imgEllipse65,
                          margin: EdgeInsets.only(top: 4.v, bottom: 2.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Column(children: [
                            AppbarSubtitle2(text: "lbl_mahbuba".tr),
                            AppbarSubtitle3(
                                text: "lbl_online".tr,
                                margin: EdgeInsets.only(right: 39.h))
                          ]))
                    ])),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCall,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 13.v, right: 12.h)),
                  AppbarImage1(
                      svgPath: ImageConstant.imgVideocam,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 13.v, right: 28.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_yesterday".tr,
                              style: CustomTextStyles.bodySmall10)),
                      SizedBox(height: 7.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(top: 33.v, bottom: 22.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: 287.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 13.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Text(
                                              "msg_hi_anne_i_am_fashion".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumErrorContainer_2
                                                  .copyWith(height: 1.43))),
                                      SizedBox(height: 4.v),
                                      Text("lbl_18_27".tr,
                                          style: CustomTextStyles.bodySmall12)
                                    ])))
                      ]),
                      SizedBox(height: 9.v),
                      Row(children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 32.h, vertical: 19.v),
                                  decoration: AppDecoration.fillGray600
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL301),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGroup230,
                                            height: 35.v,
                                            width: 181.h),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 7.h,
                                                top: 6.v,
                                                bottom: 6.v),
                                            child: Text("lbl_0_37".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeNunitoWhiteA700))
                                      ])),
                              SizedBox(height: 5.v),
                              Text("lbl_18_27".tr,
                                  style: CustomTextStyles.bodySmallNunito)
                            ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse66,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(
                                left: 16.h, top: 33.v, bottom: 22.v))
                      ]),
                      SizedBox(height: 9.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(top: 33.v, bottom: 22.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: 287.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 13.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Text(
                                              "msg_hi_anne_i_am_fashion".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumErrorContainer_2
                                                  .copyWith(height: 1.43))),
                                      SizedBox(height: 4.v),
                                      Text("lbl_18_27".tr,
                                          style: CustomTextStyles.bodySmall12)
                                    ])))
                      ]),
                      SizedBox(height: 9.v),
                      Row(children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Container(
                                  width: 287.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26.h, vertical: 13.v),
                                  decoration: AppDecoration.fillGray600
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL301),
                                  child: Text("msg_hi_don_t_worry".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumWhiteA700
                                          .copyWith(height: 1.43))),
                              SizedBox(height: 5.v),
                              Text("lbl_18_27".tr,
                                  style: CustomTextStyles.bodySmallNunito)
                            ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse66,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(
                                left: 16.h, top: 33.v, bottom: 22.v))
                      ]),
                      SizedBox(height: 9.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h),
                            margin: EdgeInsets.only(top: 33.v, bottom: 22.v)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: 287.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 13.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Text(
                                              "msg_hi_anne_i_am_fashion".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumErrorContainer_2
                                                  .copyWith(height: 1.43))),
                                      SizedBox(height: 4.v),
                                      Text("lbl_18_27".tr,
                                          style: CustomTextStyles.bodySmall12)
                                    ])))
                      ]),
                      SizedBox(height: 8.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 6.h, top: 11.v, bottom: 7.v),
                            child: Text("msg_mahbuba_is_typing".tr,
                                style: CustomTextStyles
                                    .bodyMediumErrorContainer_1))
                      ]),
                      SizedBox(height: 8.v)
                    ])),
            bottomNavigationBar: BlocSelector<ChatBloc, ChatState,
                    TextEditingController?>(
                selector: (state) => state.messageController,
                builder: (context, messageController) {
                  return CustomTextFormField(
                      controller: messageController,
                      margin: EdgeInsets.only(
                          left: 16.h, right: 16.h, bottom: 27.v),
                      hintText: "lbl_type_a_message".tr,
                      hintStyle: CustomTextStyles.bodyMediumErrorContainer_2,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 14.v, 27.h, 14.v),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgMic)),
                      suffixConstraints: BoxConstraints(maxHeight: 52.v),
                      contentPadding:
                          EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
                      borderDecoration: TextFormFieldStyleHelper.fillGray,
                      fillColor: appTheme.gray20005);
                })));
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
