import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:hexpdev_s_application1/core/utils/validation_functions.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:hexpdev_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hexpdev_s_application1/widgets/custom_elevated_button.dart';
import 'package:hexpdev_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
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
                title: AppbarSubtitle1(text: "lbl_reset_password".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("msg_enter_a_new_password".tr,
                                  style: CustomTextStyles.bodyLarge_1)),
                          SizedBox(height: 49.v),
                          BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.newpasswordController,
                                hintText: "lbl_new_password".tr,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<ResetPasswordBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 18.v, 16.h, 18.v),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgLocation
                                                : ImageConstant.imgLocation))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 52.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding: EdgeInsets.only(
                                    left: 16.h, top: 14.v, bottom: 14.v));
                          }),
                          SizedBox(height: 20.v),
                          BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.confirmpasswordController,
                                hintText: "msg_confirm_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<ResetPasswordBloc>().add(
                                          ChangePasswordVisibilityEvent1(
                                              value: !state.isShowPassword1));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 18.v, 16.h, 18.v),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword1
                                                ? ImageConstant.imgLocation
                                                : ImageConstant.imgLocation))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 52.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword1,
                                contentPadding: EdgeInsets.only(
                                    left: 16.h, top: 14.v, bottom: 14.v));
                          }),
                          Spacer(),
                          CustomElevatedButton(text: "lbl_confirm".tr)
                        ])))));
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
