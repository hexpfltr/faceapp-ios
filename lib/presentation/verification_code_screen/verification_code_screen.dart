import 'bloc/verification_code_bloc.dart';
import 'models/verification_code_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_pin_code_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VerificationCodeBloc>(
        create: (context) => VerificationCodeBloc(VerificationCodeState(
            verificationCodeModelObj: VerificationCodeModel()))
          ..add(VerificationCodeInitialEvent()),
        child: VerificationCodeScreen());
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
                title: AppbarSubtitle1(text: "msg_verification_code".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_enter_the_code_we".tr,
                              style: CustomTextStyles.bodyLarge_1)),
                      Padding(
                          padding: EdgeInsets.only(top: 52.v, right: 78.h),
                          child: Text("msg_did_t_receive_a".tr,
                              style: CustomTextStyles.bodyMedium15)),
                      BlocSelector<VerificationCodeBloc, VerificationCodeState,
                              TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                                context: context,
                                margin: EdgeInsets.only(
                                    left: 9.h, top: 19.v, right: 9.h),
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          }),
                      Padding(
                          padding: EdgeInsets.only(top: 10.v, right: 15.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_did_t_receive_a".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterErrorContainer),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "lbl_resent_code".tr,
                                    style: CustomTextStyles.labelLargePrimary)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 97.v),
                      CustomElevatedButton(text: "lbl_confirm".tr),
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
